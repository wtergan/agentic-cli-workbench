# Export Policy

The private source repo remains the source of truth. This public repo only
receives an allowlisted subset.

## Allowlist

- shared tmux config and workbench launchers
- shared yazi and lazygit configs after path sanitization
- `weztheme` and `ghosttheme`
- Windows/WSL WezTerm example
- macOS Ghostty example
- curated package hints
- public workflow docs and examples

## Denylist

- private overlays
- host snapshots
- live agent config with auth or trust roots
- raw screenshots
- generated hashes and caches
- local project histories

## Review Steps

1. Copy only allowlisted files.
2. Replace personal paths with generic examples.
3. Run `./scripts/check-private-identifiers`.
4. Run `./scripts/test`.
5. Review screenshots manually.

