#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

while IFS= read -r script; do
  bash -n "$script"
done < <(find "$ROOT/scripts" "$ROOT/configs/shared/term-scripts" -type f | sort)

