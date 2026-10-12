# dotfiles

My Mac setup: zsh (oh-my-zsh), kitty + herdr, and the CLI tools around them.

```bash
git clone git@github.com:lokeshdevnani/dotfiles.git ~/dotfiles
~/dotfiles/install.sh          # brew bundle, oh-my-zsh + plugins, then links the files below
~/dotfiles/install.sh links    # only (re)link the files
```

`install.sh` backs up any real file it replaces as `*.bak-<date>`.

| File | Linked to / sourced from |
|---|---|
| `zshrc` | `~/.zshrc` |
| `kitty/kitty.conf`, `kitty/open-path.sh` | `~/.config/kitty/` |
| `herdr/config.toml` | `~/.config/herdr/config.toml` |
| `plugins.zsh`, `options.zsh`, `aliases.sh`, `functions.sh`, `tools.zsh`, `terminal.zsh` | sourced by `zshrc` |
| `Brewfile` | `brew bundle` |

Shortcuts and how the shell tools (atuin, zoxide, fzf, rg, fd, eza) work: `terminal-productivity-cheatsheet.md`.

Private, machine-specific shell config goes in `~/.zshrc.local` (not in git).
