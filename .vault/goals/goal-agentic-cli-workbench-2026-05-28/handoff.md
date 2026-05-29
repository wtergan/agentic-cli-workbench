# Goal Handoff

## Resume Here

- Active goal run: `.vault/goals/goal-agentic-cli-workbench-2026-05-28/`
- Current milestone/task: M1.T1
- Current branch/worktree: `/home/gilgames/Code/agentic-cli-workbench` unless a worktree is
  created.
- Read first:
  - `.vault/goals/goal-agentic-cli-workbench-2026-05-28/progress.md`
  - `.vault/goals/goal-agentic-cli-workbench-2026-05-28/task-graph.md`
  - `.vault/PLAN.md`
  - `.vault/plans/002-agentic-cli-workbench-public-repo-skeleton-2026-05-28.md`
  - `.vault/research/agentic-cli-workbench-source-inventory-2026-05-28.md`

## Latest Known State

Implementation is complete and ready for screenshot review. The public repo
contains a README, AGENTS instructions, docs, sanitized shared configs, platform
examples, curated package hints, demo/session tooling, generated SVG screenshots,
tests, privacy scanner, and release evidence.

The 2026-05-29 screenshot delta is applied locally: `./scripts/demo-session show
hermes` opens `hermes --tui` in the left reference pane when Hermes is
installed, and `./scripts/demo-session show codex` opens window 1 as left
`yazi`, top-right `yazi`, and bottom-right `lazygit`.

The user also requested a standing commit convention for future Codex work:
atomic commits with uppercase type prefixes such as `FEAT:`, a one-line subject,
and at most four information-dense one-line body bullets.

## Open Risks

- Public push still requires explicit user approval.
- Optional terminal/agent binaries `opencode`, `openclaw`, `ghostty`, and
  `wezterm` were not installed in this local shell, though required TUI tools
  were present.
- Publishing full skills or live Codex config remains out of scope.

## Next Action

Capture and review the Mac/Windows demo screenshots. Add only the approved
screenshots to `screenshots/`, then re-run release checks before pushing.
