#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT/tests/lib/assert.sh"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

repo="$(AGENTIC_WORKBENCH_DEMO_ROOT="$tmp_dir" "$ROOT/scripts/demo-session" prepare codex)"
assert_file_exists "$repo/README.md"

AGENTIC_WORKBENCH_DEMO_ROOT="$tmp_dir" "$ROOT/scripts/demo-session" reset codex

[[ ! -e "$repo" ]] || fail "expected reset to remove codex demo repo"
