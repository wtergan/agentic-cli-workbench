# macOS

The macOS profile uses Ghostty as the host terminal with the same shared tmux
workbench underneath.

## Files

- Ghostty example: `configs/macos/ghostty/config`
- Shared tmux config: `configs/shared/tmux/tmux.conf`
- Theme picker: `configs/shared/term-scripts/ghosttheme`

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

