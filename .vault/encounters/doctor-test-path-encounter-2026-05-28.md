---
encounter: "doctor test removed bash from PATH"
date: "2026-05-28"
related_plan: ".vault/plans/006-agentic-cli-workbench-install-validation-2026-05-28.md"
---

# Encounter: Doctor Test Removed Bash From PATH

## Symptom

The missing-tools doctor test expected doctor output, but the script failed
before executing because the test set `PATH` to an empty temporary directory and
then invoked `bash` through `env`.

## Root Cause

The test tried to simulate missing tools by removing everything from `PATH`,
but that also removed the shell needed to run the script.

## Resolution

Invoke the script with `/usr/bin/bash` while preserving the stripped `PATH` for
the script body. This keeps the missing-tool simulation without preventing the
test harness from running.

## Prevention

When testing missing command behavior, keep the test runner executable available
by invoking it with an absolute path.
