# Modern CLI tooling: fzf, zoxide, atuin, eza, fd

if command -v fd >/dev/null; then
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
fi
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# fzf: Ctrl-T files, Alt-C cd into dir, **<Tab> completion
command -v fzf >/dev/null && source <(fzf --zsh)

# zoxide: `cd foo` jumps to best match, `cdi` picks interactively
command -v zoxide >/dev/null && eval "$(zoxide init zsh --cmd cd)"

# atuin: Ctrl-R full-screen history search (after fzf so it owns Ctrl-R)
[ -f "$HOME/.atuin/bin/env" ] && . "$HOME/.atuin/bin/env"
command -v atuin >/dev/null && eval "$(atuin init zsh --disable-up-arrow)"

if command -v eza >/dev/null; then
  alias ls='eza --group-directories-first'
  alias ll='eza -lah --git --icons --group-directories-first'
  alias lt='eza --tree --level=2 --icons --git-ignore'
fi
