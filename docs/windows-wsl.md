# Windows / WSL

The Windows profile uses WezTerm as the host terminal and WSL as the Linux
runtime for tmux, yazi, lazygit, and the agent CLIs.

## Files

- WezTerm example: `configs/windows-wsl/wezterm/wezterm.lua`
- Shared tmux config: `configs/shared/tmux/tmux.conf`
- Theme picker: `configs/shared/term-scripts/weztheme`

## Suggested Tools

```text
Windows host: WezTerm, Git, VS Code, Chrome
WSL: zsh, tmux, fzf, ripgrep, yazi, lazygit, node, npm
```

Package hints live in:

- `packages/windows-host/winget.txt`
- `packages/windows-wsl/apt.txt`

## Theme Flow

`weztheme` reads iTerm2 dynamic color schemes, applies them to the current
terminal when possible, writes a persisted WezTerm dynamic theme file, and can
generate a tmux color include.

```bash
weztheme --list
weztheme --set "Tokyo Night"
weztheme --mode dark
```

