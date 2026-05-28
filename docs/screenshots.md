# Screenshots

The files in `screenshots/` are public-safe demo visuals. The README uses a
real Windows/WSL tmux capture from a neutral Hermes demo repo:

- `screenshots/hermes-demo-wsl.png`

The SVG files are generated fallback visuals from neutral text fixtures.

Regenerate them with:

```bash
./scripts/generate-demo-screenshots
```

For real terminal captures, use the neutral demo repos and screenshot-ready tmux
sessions. These sessions use real tmux, yazi, and lazygit panes, but the agent
pane is a public-safe mock by default so account/session details do not leak.

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

If you intentionally want the real agent TUI in the left pane, run with:

```bash
AGENTIC_WORKBENCH_REAL_AGENT=1 ./scripts/demo-session show hermes
AGENTIC_WORKBENCH_REAL_AGENT=1 ./scripts/demo-session show codex
```

Only use real-agent mode after checking that the agent screen will not expose
account, billing, session, path, model entitlement, or private workspace details.

Then inspect the capture for local paths, emails, account names, real commit
history, and private filenames before publishing.
