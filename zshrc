# Linked to ~/.zshrc by install.sh. Private or machine-specific bits go in ~/.zshrc.local (not in git).
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="cloud_custom"
DISABLE_COMPFIX="true"   # skip the completion-security audit on every start (~30ms)

alias python=/usr/bin/python3
source ~/dotfiles/plugins.zsh
source $ZSH/oh-my-zsh.sh
source ~/dotfiles/options.zsh
source ~/dotfiles/aliases.sh
source ~/dotfiles/functions.sh
source ~/dotfiles/tools.zsh
source ~/dotfiles/terminal.zsh

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init - --no-rehash)"
fi

# Google Cloud SDK
if [ -f '/usr/local/share/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/share/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/usr/local/share/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/share/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.local/bin:$PATH"

# bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# TinyTeX
export PATH="$HOME/Library/TinyTeX/bin/universal-darwin:$PATH"

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
