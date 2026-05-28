# Example AGENTS.md

Use this as a public-safe starting point for projects that want the same
workflow style.

## Workflow

- Prefer local project instructions when present.
- Work in small, reviewable changes.
- Use deterministic tooling such as `rg`, `fd`, `jq`, and `yq`.
- Plan multi-file changes in `.vault/plans/`.
- Validate with the narrowest relevant checks before broad checks.

## Public Safety

- Do not commit credentials, tokens, private overlays, or raw local screenshots.
- Ask before destructive commands, publication, or history rewriting.

## Commits

- Use atomic commits.
- Use uppercase type prefixes such as `FEAT:`, `FIX:`, `DOCS:`, and `TEST:`.
- Keep body bullets to four one-line bullets at most.

