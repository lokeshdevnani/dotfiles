#!/usr/bin/env bash
# Set up this Mac:  ./install.sh          everything
#                   ./install.sh links    only link the config files
set -euo pipefail
DOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link() {  # link SOURCE DEST: back up a real file at DEST, then symlink it to SOURCE
  mkdir -p "$(dirname "$2")"
  if [ -e "$2" ] && [ ! -L "$2" ]; then
    mv "$2" "$2.bak-$(date +%Y%m%d-%H%M%S)"; echo "backed up $2"
  fi
  ln -sfn "$1" "$2"; echo "linked $2"
}

link "$DOT/zshrc"                ~/.zshrc
link "$DOT/kitty/kitty.conf"     ~/.config/kitty/kitty.conf
link "$DOT/kitty/open-path.sh"   ~/.config/kitty/open-path.sh
link "$DOT/herdr/config.toml"    ~/.config/herdr/config.toml
[ "${1:-}" = "links" ] && exit 0

brew bundle --file="$DOT/Brewfile"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
custom="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
[ -d "$custom/plugins/zsh-autosuggestions" ] || git clone https://github.com/zsh-users/zsh-autosuggestions "$custom/plugins/zsh-autosuggestions"
[ -d "$custom/plugins/alias-tips" ] || git clone https://github.com/djui/alias-tips "$custom/plugins/alias-tips"
