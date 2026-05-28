# Security And Sanitization

This repo is public-facing. Treat every exported file and screenshot as if it
will be inspected by strangers.

## Do Not Publish

- emails, usernames, tokens, account IDs, or auth config
- raw screenshots with real repos, real commit history, or local files
- private overlays, host snapshots, generated hashes, or live session state
- machine-specific trust roots or absolute personal paths

## Screenshot Rules

- Use `scripts/demo-session prepare` to create neutral demo repos.
- Use fake git identity inside demo repos.
- Capture demo panes, not live project panes.
- Review images manually before committing.

## Scan

```bash
./scripts/check-private-identifiers
```

The scanner is intentionally conservative. Fix findings unless they are clearly
safe public documentation inside `.vault/` planning artifacts.

