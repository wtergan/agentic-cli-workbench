#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT/tests/lib/assert.sh"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

repo="$(AGENTIC_WORKBENCH_DEMO_ROOT="$tmp_dir" "$ROOT/scripts/demo-session" prepare)"

assert_file_exists "$repo/README.md"
log="$(git -C "$repo" log --format=fuller -1)"
assert_contains "$log" "Demo Author"
assert_contains "$log" "demo@example.invalid"

