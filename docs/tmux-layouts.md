# Tmux Layouts

## `ide`

```text
reference windows
+-----------------------------+----------------------+
| agent or shell              | yazi                 |
|                             +----------------------+
|                             | lazygit              |
+-----------------------------+----------------------+

focused window
+----------------------------------------------------+
| agent pane named after the wrapper                 |
+----------------------------------------------------+
```

Run it directly:

```bash
ide workbench ~/Code/example-app
```

## Agent Wrappers

- `codex-ide` sets `IDE_AGENT_COMMAND=codex`.
- `hermes-ide` uses `hermes --tui` in reference windows and `hermes` in the
  focused agent window.
- `opencode-ide` sets `IDE_AGENT_COMMAND=opencode`.
- `openclaw-ide` sets `IDE_AGENT_COMMAND=openclaw`.

## Screenshot Demo Layouts

`scripts/demo-session show hermes` uses the normal agent-reference shape, with
`hermes --tui` in the left pane when Hermes is installed.

`scripts/demo-session show codex` makes window 1 a navigation cockpit:

```text
window 1
+-----------------------------+----------------------+
| yazi                        | yazi                 |
|                             +----------------------+
|                             | lazygit              |
+-----------------------------+----------------------+

window codex
+----------------------------------------------------+
| mock Codex pane, or real Codex with real-agent mode |
+----------------------------------------------------+
```

## Useful tmux Bindings

Prefix is the backtick key.

| Binding | Action |
|---|---|
| `` ` c`` | new window in current path |
| `` ` |`` | horizontal split |
| `` ` -`` | vertical split |
| `` ` f`` | zoom/unzoom pane |
| `` ` s`` | file picker popup |
| `` ` g`` | ripgrep popup |
| `` ` O`` | start or attach workbench layout |
