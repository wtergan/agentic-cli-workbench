---
solution: "privacy scanner self-match exclusion"
date: "2026-05-28"
related_plan: ".vault/plans/006-agentic-cli-workbench-install-validation-2026-05-28.md"
---

# Solution: Exclude Scanner Implementation From Scanner Targets

## Context

The public privacy scanner stores sensitive-looking patterns in its own source
file. A whole-repo scan initially matched those pattern literals and failed even
though no exported config or docs contained those identifiers.

## Pattern

Keep the scanner's pattern list in the script, but exclude the scanner
implementation path from scan targets. Tests should still run the scanner
against the repository so exported files remain covered.

## Reuse

Use this pattern for simple repository scanners that include their own denylist
terms. Exclude the scanner implementation, not broad directories of real
content.
