# Goal: Agentic CLI Workbench

## Objective

Create a new public GitHub-ready repo named `agentic-cli-workbench` that
showcases the user's modern agentic CLI workbench using a curated, public-safe
subset of this dotfiles repo.

## Starting Point

- Project index: `.vault/PLAN.md`
- Active goal run: `.vault/goals/goal-agentic-cli-workbench-2026-05-28/`
- Source research: `.vault/research/agentic-cli-workbench-source-inventory-2026-05-28.md`
- Boundary decision: `.vault/decisions/agentic-cli-workbench-public-boundary-2026-05-28.md`
- Linked plans:
  - `.vault/plans/002-agentic-cli-workbench-public-repo-skeleton-2026-05-28.md`
  - `.vault/plans/003-agentic-cli-workbench-curated-config-export-2026-05-28.md`
  - `.vault/plans/004-agentic-cli-workbench-demo-session-and-screenshots-2026-05-28.md`
  - `.vault/plans/005-agentic-cli-workbench-public-agent-framework-docs-2026-05-28.md`
  - `.vault/plans/006-agentic-cli-workbench-install-validation-2026-05-28.md`
  - `.vault/plans/007-agentic-cli-workbench-release-verification-2026-05-28.md`

## Acceptance Criteria

- [x] `agentic-cli-workbench` has a polished public README and docs.
- [x] Public repo includes only curated configs/scripts/examples.
- [x] Demo sessions or screenshots show Hermes/Codex/yazi/lazygit workflows
      without private data.
- [x] Windows/WSL and macOS setup paths are clearly differentiated.
- [x] Public agent workflow docs explain `.vault`, `/goal`, and the uppercase
      atomic commit convention.
- [x] Validation and privacy checks pass before any push.
- [x] Final release gate reviews tests, privacy scans, screenshots, docs, and
      atomic uppercase commit history.

## Non-Goals and Approval Boundaries

- Do not publish the private dotfiles repo wholesale.
- Do not publish raw screenshots, private overlays, host snapshots, live Codex
  state, auth, secrets, account IDs, emails, or local project history.
- Ask before creating a GitHub remote, pushing publicly, publishing full skill
  bundles, choosing a license if uncertain, or adding auto-install behavior.

## Native Goal Contract

```text
/goal Outcome: create the public-safe agentic-cli-workbench repo from the dotfiles source. Start from /home/gilgames/Code/agentic-cli-workbench/.vault/goals/goal-agentic-cli-workbench-2026-05-28/handoff.md, task-graph.md, .vault/PLAN.md, and linked feature plans 002-007. Work in small milestones, update progress after each meaningful action, verify privacy and behavior before completion, use uppercase atomic commit messages, capture decisions/solutions/encounters when durable, and stop for public push, private-data uncertainty, licensing uncertainty, auto-install behavior, or repeated validation blockers. Done when the repo skeleton, curated configs, demo screenshots/session, public workflow docs, validation path, and release gate are ready with evidence.
```
