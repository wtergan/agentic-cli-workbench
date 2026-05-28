# Modern CLI integration (safe aliases only; no hard overrides for cd/ls/cat)

# fd compatibility: Ubuntu often installs `fdfind` instead of `fd`.
if ! command -v fd >/dev/null 2>&1 && command -v fdfind >/dev/null 2>&1; then
  alias fd='fdfind'
fi

# bat compatibility: Ubuntu may expose `batcat` command.
if ! command -v bat >/dev/null 2>&1 && command -v batcat >/dev/null 2>&1; then
  alias bat='batcat'
fi

# zoxide init (keeps default cd behavior untouched).
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# eza convenience aliases; keep `ls` untouched.
if command -v eza >/dev/null 2>&1; then
  alias ll='eza -lah --group-directories-first --icons=auto'
  alias la='eza -a --group-directories-first --icons=auto'
  alias ltree='eza --tree --level=2 --icons=auto'
fi

# Optional convenience wrappers.
if command -v tldr >/dev/null 2>&1; then
  alias tl='tldr'
fi
if command -v git-delta >/dev/null 2>&1; then
  alias gdd='git -c core.pager=delta diff'
fi
if command -v btop >/dev/null 2>&1; then
  alias topm='btop'
fi
