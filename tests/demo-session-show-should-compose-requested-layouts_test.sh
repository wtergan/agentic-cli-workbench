#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT/tests/lib/assert.sh"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

fake_bin="$tmp_dir/bin"
mkdir -p "$fake_bin"

cat > "$fake_bin/tmux" <<'SH'
#!/usr/bin/env bash
set -euo pipefail

printf '%s\n' "$*" >> "$TMUX_LOG"

if [ "${1:-}" = "has-session" ]; then
  exit 1
fi

exit 0
SH
chmod +x "$fake_bin/tmux"

for tool in yazi lazygit codex hermes; do
  cat > "$fake_bin/$tool" <<'SH'
#!/usr/bin/env bash
exit 0
SH
  chmod +x "$fake_bin/$tool"
done

tmux_log="$tmp_dir/tmux.log"
touch "$tmux_log"

PATH="$fake_bin:$PATH" \
TMUX_LOG="$tmux_log" \
AGENTIC_WORKBENCH_DEMO_ROOT="$tmp_dir/demo" \
  "$ROOT/scripts/demo-session" show codex >/dev/null

log="$(cat "$tmux_log")"
assert_contains "$log" "new-session -d -s demo-codex"
assert_contains "$log" "split-window -h -t demo-codex:1"
assert_contains "$log" "split-window -v -t demo-codex:1.2"
assert_contains "$log" "send-keys -t demo-codex:1.1 clear; yazi Enter"
assert_contains "$log" "send-keys -t demo-codex:1.2 clear; yazi Enter"
assert_contains "$log" "send-keys -t demo-codex:1.3 clear; lazygit Enter"
assert_contains "$log" "new-window -n codex -t demo-codex"

: > "$tmux_log"

PATH="$fake_bin:$PATH" \
TMUX_LOG="$tmux_log" \
AGENTIC_WORKBENCH_DEMO_ROOT="$tmp_dir/demo" \
  "$ROOT/scripts/demo-session" show hermes >/dev/null

log="$(cat "$tmux_log")"
assert_contains "$log" "new-session -d -s demo-hermes"
assert_contains "$log" "send-keys -t demo-hermes:1.1 clear;"
assert_contains "$log" "hermes --tui Enter"
