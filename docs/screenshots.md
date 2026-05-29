# Screenshots

The files in `screenshots/` are public-safe demo visuals. The README uses a
real Windows/WSL tmux capture from a neutral Hermes demo repo plus an approved
macOS Codex-IDE capture showing the GoodNotes/yazi workflow:

- `screenshots/hermes-demo-wsl.png`
- `screenshots/codex-ide-macos-goodnotes.png`

The SVG files are generated fallback visuals from neutral text fixtures.

Regenerate them with:

```bash
./scripts/generate-demo-screenshots
```

For real terminal captures, use the neutral demo repos and screenshot-ready tmux
sessions. These sessions use real tmux, yazi, and lazygit panes with neutral
demo repositories under `demo/workspace/`.

| Mode | First window | Focused agent window |
|---|---|---|
| `hermes` | left `hermes --tui`, top-right `yazi`, bottom-right `lazygit` | `hermes` when installed |
| `codex` | left `yazi`, top-right `yazi`, bottom-right `lazygit` | public-safe mock Codex unless real-agent mode is enabled |
| `nav` | left `yazi`, top-right `yazi`, bottom-right `lazygit` | none |

```bash
./scripts/demo-session reset all
./scripts/demo-session prepare hermes
./scripts/demo-session show hermes
```

Capture the Hermes screenshot, then switch to Codex:

```bash
./scripts/demo-session kill hermes
./scripts/demo-session prepare codex
./scripts/demo-session show codex
```

On Windows/WSL, run those commands from the WSL shell inside WezTerm. Use the
Windows screenshot tool after the tmux layout is visible. The generated demo
repositories live under `demo/workspace/` and use `Demo Author
<demo@example.invalid>`.

If you intentionally want the real Codex CLI in the focused Codex window, run
with:

```bash
AGENTIC_WORKBENCH_REAL_AGENT=1 ./scripts/demo-session show codex
```

Hermes opens the real `hermes --tui` reference pane automatically when the
binary is available. Only use real agent screens after checking that they will
not expose account, billing, session, path, model entitlement, or private
workspace details.

Then inspect the capture for local paths, emails, account names, real commit
history, and private filenames before publishing.

Approved captures can intentionally show useful local workflow context when the
content has been reviewed for secrets and account data. The macOS Codex-IDE
GoodNotes screenshot is one such capture: it shows a handwritten PDF preview,
converted Markdown, and lazygit state to demonstrate layout flexibility.
