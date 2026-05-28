---
decision: "agentic-cli-workbench public boundary"
date: "2026-05-28"
status: "Accepted"
---

# Decision: Build A Curated Public Showcase Repo

## Context

The dotfiles repo contains both public-worthy workflow material and private
machine state. The user wants a presentable GitHub repo named
`agentic-cli-workbench` that showcases a modern agentic CLI IDE-like workflow
without publishing the entire dotfiles repository.

## Decision

Create `agentic-cli-workbench` as a curated public showcase repo. It should
present the workflow, selected configs, demo fixtures, screenshots, and docs,
while excluding private overlays, host snapshots, account state, raw screenshots,
and live agent configuration.

## Consequences

- The public repo can be polished and narrative-first instead of a raw dotfiles
  dump.
- A small export/sanitization discipline is required so the public repo stays in
  sync with the private source without leaking sensitive state.
- Some deep Codex skill/framework material should be summarized publicly first
  and only expanded after a separate licensing/privacy pass.

## Alternatives Considered

- Publish the dotfiles repo directly: rejected because it mixes public workflow
  value with private overlays, host state, generated files, and local context.
- Make only a blog post: rejected because the user wants a reusable GitHub repo
  with configs and scripts.
- Create a separate repo only for skills: deferred because the terminal
  workbench is the stronger first public artifact.
