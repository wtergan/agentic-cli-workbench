# Goal Task Graph

## Milestones

### M1: Public Structure

- Goal: establish the repo skeleton and public story.
- Depends on: None.
- Validation level: L1 text/privacy checks.
- Review gate: pre-export review.

| Task ID | Plan | Task | State | Depends On | Owner/Lane | Validation |
|---|---|---|---|---|---|---|
| M1.T1 | `.vault/plans/002-agentic-cli-workbench-public-repo-skeleton-2026-05-28.md` | Create repo structure and README/docs skeleton | complete | None | implementer | privacy `rg`, manual README review |

### M2: Public-Safe Source Export

- Goal: copy only curated configs and platform examples.
- Depends on: M1.
- Validation level: L2 syntax and privacy checks.
- Review gate: security review before screenshots.

| Task ID | Plan | Task | State | Depends On | Owner/Lane | Validation |
|---|---|---|---|---|---|---|
| M2.T1 | `.vault/plans/003-agentic-cli-workbench-curated-config-export-2026-05-28.md` | Export tmux, yazi, lazygit, theme, and platform config subset | complete | M1.T1 | implementer | `bash -n`, privacy `rg` |
| M2.T2 | `.vault/plans/005-agentic-cli-workbench-public-agent-framework-docs-2026-05-28.md` | Add public workflow docs and commit convention examples | complete | M1.T1 | planner | privacy `rg`, docs review |

### M3: Public Visual Proof

- Goal: create demo layouts and screenshots without private data.
- Depends on: M2.
- Validation level: L2 demo checks plus manual visual review.
- Review gate: security review before publish.

| Task ID | Plan | Task | State | Depends On | Owner/Lane | Validation |
|---|---|---|---|---|---|---|
| M3.T1 | `.vault/plans/004-agentic-cli-workbench-demo-session-and-screenshots-2026-05-28.md` | Create demo fixtures, launcher, and screenshot workflow | complete | M2.T1 | implementer | demo smoke, git identity check, visual review |

### M4: Visitor Validation

- Goal: make the repo adaptable and verifiable for curious visitors.
- Depends on: M2 and M3.
- Validation level: L2 tests and docs checks.
- Review gate: final reviewer/security pass.

| Task ID | Plan | Task | State | Depends On | Owner/Lane | Validation |
|---|---|---|---|---|---|---|
| M4.T1 | `.vault/plans/006-agentic-cli-workbench-install-validation-2026-05-28.md` | Add doctor/setup/validation flow | complete | M2.T1, M3.T1 | validator | script tests, privacy `rg`, docs review |

### M5: Release Gate

- Goal: verify the repo is safe and coherent before user-approved publication.
- Depends on: M1-M4.
- Validation level: L3 release gate.
- Review gate: final reviewer/security pass.

| Task ID | Plan | Task | State | Depends On | Owner/Lane | Validation |
|---|---|---|---|---|---|---|
| M5.T1 | `.vault/plans/007-agentic-cli-workbench-release-verification-2026-05-28.md` | Run final privacy, history, docs, screenshot, and release checks | complete | M4.T1 | validator/security | tests, secret scans, screenshot review, commit log review |

## State Values

- planned
- ready
- in_progress
- verifying
- review_pending
- blocked
- complete
