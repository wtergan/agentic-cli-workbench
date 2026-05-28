#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT/tests/lib/assert.sh"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

repo="$(AGENTIC_WORKBENCH_DEMO_ROOT="$tmp_dir" "$ROOT/scripts/demo-session" prepare hermes)"

assert_file_exists "$repo/README.md"
assert_file_exists "$repo/config/screenshot.js"
assert_file_exists "$repo/notes.todo"
log="$(git -C "$repo" log --format=fuller -1)"
assert_contains "$log" "Demo Author"
assert_contains "$log" "demo@example.invalid"
count="$(git -C "$repo" rev-list --count HEAD)"
[[ "$count" -ge 3 ]] || fail "expected demo repo to have at least 3 commits"
status="$(git -C "$repo" status --short)"
assert_contains "$status" "A  config/screenshot.js"
assert_contains "$status" " M docs/workflow.md"
assert_contains "$status" "?? notes.todo"
