---
topic: "agentic-cli-workbench source inventory"
date: "2026-05-28"
status: "Complete"
---

# Agentic CLI Workbench Source Inventory

## Question

Which existing dotfiles artifacts should seed the public `agentic-cli-workbench`
repo, and which artifacts should stay private or source-only?

## High-Signal Source Files

- `docs/terminal-tooling-reference.md` documents the current tmux, yazi,
  lazygit, Ghostty, WezTerm, `ghosttheme`, and `weztheme` workflow.
- `docs/codex-agentic-framework.md` documents the Codex workflow framework,
  `.vault` contract, prompt lanes, native agent catalog, and `/goal` handoff.
- `configs/shared/term-scripts/ide` creates the shared tmux workbench layout.
- `configs/shared/term-scripts/codex-ide`, `hermes-ide`, `opencode-ide`, and
  `openclaw-ide` wrap the shared layout for specific agent commands.
- `configs/shared/tmux/tmux.conf` contains the shared tmux behavior, popup
  helpers, notifications, true-color support, and plugin configuration.
- `configs/shared/yazi/` and `configs/shared/lazygit/` contain the side-pane
  navigation and git UI configs used in the screenshots.
- `configs/shared/term-scripts/weztheme` and `ghosttheme` contain the public
  terminal theme switching story.
- `configs/profiles/windows-wsl/` and `configs/profiles/macos/` show how the
  same workflow shape maps onto WezTerm/WSL and Ghostty/macOS.
- `packages/` and `manifests/` provide package examples, but public output
  should be minimal and curated rather than raw host snapshots.

## Screenshot Evidence

- `Screenshot 2026-05-28 114036.png` shows a Hermes session with agent pane on
  the left and yazi/lazygit on the right.
- `Screenshot 2026-05-28 114631.png` shows a Codex navigation-heavy session
  where the left side is used for yazi/file inspection and the right side shows
  multiple lazygit panes.
- The screenshots should not be published directly because they include local
  project names, git identity, file paths, and real work history.

## Public Include Candidates

- Curated README and docs explaining the workbench pattern.
- Public-safe `tmux`, `yazi`, `lazygit`, `weztheme`, `ghosttheme`, and agent
  wrapper configs.
- Platform split docs for Windows/WSL and macOS.
- Demo fixture scripts that create neutral repos and repeatable tmux layouts.
- Example public `AGENTS.md`, Codex config, and agent workflow docs.
- Small validation scripts and tests that prove layout wrappers and demo flows.

## Keep Private or Source-Only

- `private/` overlays.
- Host snapshots under `hosts/` such as installed package dumps, managed hashes,
  full `snapshot.json`, and `versions.txt`.
- Live `~/.codex` or Desktop state, trust roots, auth, caches, sessions, and
  generated plugin metadata.
- Raw screenshots with emails, account identifiers, local projects, git history,
  or personal file paths.
- Full imported third-party skill bundles unless licensing, attribution, and
  public purpose are explicitly reviewed.
- Obsidian/Vault implementation details beyond a public workflow explanation.

## Recommendation

Build `agentic-cli-workbench` as a curated public repo, not a mirror. Keep the
private dotfiles repo as the source of truth, then copy or generate a selected
public subset with demo fixtures, docs, and validation.
