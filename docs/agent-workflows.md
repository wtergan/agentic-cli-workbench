# Agent Workflows

The terminal layout is only half the workflow. The other half is an operating
discipline for agentic coding work.

## Default Lane

```text
research -> plan -> implement -> validate
```

- Research local files and docs before guessing.
- Plan multi-file or public-facing work in `.vault/plans/`.
- Implement in small verified increments.
- Validate with focused checks first, then broader tests and review.

## Operational Memory

`.vault/` is the repo-local engineering cockpit:

- `PLAN.md` indexes active plans and risks.
- `plans/` holds executable feature plans.
- `research/` records source inventory and external docs.
- `decisions/` captures durable ADR-style choices.
- `solutions/` stores reusable implementation patterns.
- `encounters/` stores recurring failures and prevention notes.
- `goals/` stores long-running `/goal` handoff state.

## Commit Convention

Use atomic commits with uppercase type prefixes:

```text
DOCS: explain public workbench boundary

- Separates private source state from public showcase artifacts
- Adds screenshot and config sanitization rules
```

The subject is the main line. Optional body content is at most four
information-dense one-line bullets.

