# Overview

`agentic-cli-workbench` is a public reference implementation for a terminal
workflow that treats the coding agent as a first-class pane in the development
environment.

## Core Idea

The workbench is intentionally simple:

- `tmux` owns workspace layout and persistence.
- agent wrappers start a named session for Codex, Hermes, OpenCode, or OpenClaw.
- `yazi` keeps filesystem context visible.
- `lazygit` keeps repository state visible.
- `fzf` and `ripgrep` provide popup navigation from inside tmux.
- `weztheme` and `ghosttheme` keep terminal, tmux, and editor colors coherent.

## Repository Map

- `configs/shared/` contains portable tmux, yazi, lazygit, shell, and script
  pieces.
- `configs/windows-wsl/` contains the WezTerm-facing Windows/WSL profile.
- `configs/macos/` contains the Ghostty-facing macOS profile.
- `scripts/` contains non-destructive demo and validation helpers.
- `examples/` contains safe public examples for agent workflow docs.
- `screenshots/` contains generated or sanitized public visuals.
- `.vault/` contains operational planning memory for this repo.

## Public Boundary

This repo is a showcase and adaptation guide. It is not a full personal
dotfiles dump and intentionally avoids private overlays, raw host snapshots,
credentials, local project history, and unsanitized screenshots.

