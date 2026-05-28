# Tmux Layouts

## `ide`

```text
window 1
+-----------------------------+----------------------+
| agent or shell              | yazi                 |
|                             +----------------------+
|                             | lazygit              |
+-----------------------------+----------------------+

window 2
same three-pane reference layout

window 3
focused agent pane named after the wrapper
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

