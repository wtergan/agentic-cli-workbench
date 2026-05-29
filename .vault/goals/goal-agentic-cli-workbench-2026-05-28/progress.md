# Goal Progress

## Current Status

- Phase: release-ready
- Current milestone: M5
- Current task: M5.T1
- Last action: 2026-05-29 - Added the user-approved macOS Codex-IDE GoodNotes
  screenshot to `screenshots/` and embedded it in the README.
- Next action: capture and review any remaining Mac/Windows screenshots, then
  add only the screenshots the user approves.

## Execution Ledger

- 2026-05-28 - Created source inventory, public-boundary decision, feature plan
  breakdown, and goal overlay.
- 2026-05-28 - Added public README, AGENTS instructions, overview/platform/docs,
  sanitized shared configs, curated package hints, public examples, demo tooling,
  generated SVG screenshots, doctor, privacy scanner, and tests.
- 2026-05-28 - Fixed test harness path issue and scanner self-match issue;
  captured one encounter and one reusable solution.
- 2026-05-28 - Ran release checks: `./scripts/test`, `./scripts/doctor`,
  `./scripts/check-private-identifiers`, and repository file inventory.
- 2026-05-28 - Created local atomic commits:
  `e7c69b2 CHORE: seed workbench goal memory`,
  `0f2c2e0 FEAT: export curated workbench configs`,
  `85ee428 FEAT: add demo and validation tooling`,
  `a639da6 DOCS: publish public workbench guide`.
- 2026-05-29 - Updated `scripts/demo-session` and screenshot docs for the
  requested capture layouts: Hermes real TUI on the left and Codex
  yazi/yazi/lazygit window 1.
- 2026-05-29 - Verified the updated demo sessions locally; `demo-codex:1`
  launched `yazi`, `yazi`, and `lazygit`, while `demo-hermes:1` launched the
  Hermes TUI process plus `yazi` and `lazygit`.
- 2026-05-29 - Added `screenshots/codex-ide-macos-goodnotes.png` and README
  placement for the approved macOS Codex-IDE screenshot.

## Validation Evidence

| Date | Scope | Command/Check | Result | Notes |
|---|---|---|---|---|
| 2026-05-28 | Planning | `rg`/local file inspection | pass | Source paths identified for public-safe planning |
| 2026-05-28 | Test suite | `./scripts/test` | pass | privacy scan, demo fixture, and shell syntax checks passed |
| 2026-05-28 | Doctor | `./scripts/doctor` | pass-with-notes | required tools present; optional `opencode`, `openclaw`, `ghostty`, `wezterm` not installed here |
| 2026-05-28 | Privacy | `./scripts/check-private-identifiers` | pass | scanner excludes its own denylist file and `.vault` planning artifacts |
| 2026-05-28 | Git history | `git log --format='%h %s%n%b' --max-count=10` | pass | local commits use uppercase atomic subjects and at most three body bullets |
| 2026-05-29 | Test suite | `./scripts/test` | pass | includes demo-session composition test |
| 2026-05-29 | Doctor | `./scripts/doctor` | pass-with-notes | required tools present; optional `openclaw`, `ghostty`, and `wezterm` not on this shell PATH |
| 2026-05-29 | Privacy | `./scripts/check-private-identifiers` | pass | no private identifiers found in updated docs/scripts/screenshots |
| 2026-05-29 | Live tmux smoke | `./scripts/demo-session reset all; ./scripts/demo-session show hermes; ./scripts/demo-session show codex` | pass | left panes match requested Hermes and Codex screenshot layouts |

## Review Ledger

| Date | Scope | Reviewer | Verdict | Follow-up |
|---|---|---|---|---|
| 2026-05-28 | Plan creation | coordinator | ready_for_goal | Run implementation by plan order |
| 2026-05-28 | Release gate | coordinator | release_ready | public push still requires user approval |

## Durable Captures

- Decisions: `.vault/decisions/agentic-cli-workbench-public-boundary-2026-05-28.md`
- Solutions: `.vault/solutions/privacy-scanner-self-match-solution-2026-05-28.md`
- Encounters: `.vault/encounters/doctor-test-path-encounter-2026-05-28.md`
