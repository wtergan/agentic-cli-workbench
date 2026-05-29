# macOS

The macOS profile uses Ghostty as the host terminal with the same shared tmux
workbench underneath.

## Files

- Ghostty example: `configs/macos/ghostty/config`
- Shared tmux config: `configs/shared/tmux/tmux.conf`
- Theme picker: `configs/shared/term-scripts/ghosttheme`
- Agent wrappers: `configs/shared/term-scripts/codex-ide` and
  `configs/shared/term-scripts/hermes-ide`

## Suggested Tools

```text
brew install tmux fzf ripgrep yazi lazygit zsh node
brew install --cask ghostty visual-studio-code google-chrome
```

Package hints live in:

- `packages/macos/brew-formulae.txt`
- `packages/macos/brew-casks.txt`

## Theme Flow

`ghosttheme` selects Ghostty themes, persists the active theme next to the
Ghostty config, supports light/dark/auto mode, and generates Vim/Neovim color
files from the selected palette.

```bash
ghosttheme --list
ghosttheme --set "Builtin Dark"
ghosttheme --mode auto
```

When Hermes is installed, `ghosttheme` can also sync the Hermes display skin for
light/dark mode so the terminal, tmux, editor, and Hermes TUI stay visually
aligned.

## Agent Workflow Notes

The macOS setup mirrors the private dotfiles shape without publishing private
machine overlays:

- `hermes-ide` opens `hermes --tui` in the left reference panes and a focused
  Hermes window for agent work.
- `codex-ide` opens the Codex CLI, while the Codex app can use the tmux session
  as a navigation cockpit with yazi and lazygit visible.
- The demo command `./scripts/demo-session show hermes` opens `hermes --tui`
  automatically when `hermes` is on `PATH`.
- The Codex screenshot command `./scripts/demo-session show codex` makes window
  1 the yazi/yazi/lazygit template shown in the screenshot guide.

If a GUI-launched terminal cannot find `hermes`, compare:

```bash
command -v hermes
zsh -ic 'command -v hermes'
```

Homebrew and user-local tools commonly need `/opt/homebrew/bin` and
`~/.local/bin` in the shell startup path for Ghostty, tmux, and agent launchers.
