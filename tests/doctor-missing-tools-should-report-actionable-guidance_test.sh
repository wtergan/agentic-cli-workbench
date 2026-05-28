#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source "$ROOT/tests/lib/assert.sh"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

output="$(PATH="$tmp_dir" /usr/bin/bash "$ROOT/scripts/doctor" 2>&1 || true)"

assert_contains "$output" "Missing required tools:"
assert_contains "$output" "./scripts/demo-session prepare"
