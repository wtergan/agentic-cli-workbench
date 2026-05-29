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

## Demo Sessions For Screenshots

Run the demo scripts from the WSL shell inside WezTerm so tmux, yazi, lazygit,
and the agent CLIs all run in the Linux environment:

```bash
./scripts/demo-session reset all
./scripts/demo-session prepare hermes
./scripts/demo-session show hermes
```

After capturing Hermes, switch to the Codex screenshot template:

```bash
./scripts/demo-session kill hermes
./scripts/demo-session prepare codex
./scripts/demo-session show codex
```

The Codex demo first window is intentionally navigation-first: left `yazi`,
top-right `yazi`, and bottom-right `lazygit`. Use the Windows screenshot tool
after the tmux session is visible in WezTerm. The neutral demo repos live under
`demo/workspace/` and use the fake identity `Demo Author <demo@example.invalid>`.

## Theme Flow

`weztheme` reads iTerm2 dynamic color schemes, applies them to the current
terminal when possible, writes a persisted WezTerm dynamic theme file, and can
generate a tmux color include.

```bash
weztheme --list
weztheme --set "Tokyo Night"
weztheme --mode dark
```
