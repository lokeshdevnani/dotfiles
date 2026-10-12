# Terminal shortcuts (kitty + herdr + zsh)

In a herdr window, Cmd keys drive herdr. In a plain kitty window they drive kitty.
Herdr's own help: ctrl+b then ?

## Tabs
| Press | Herdr window | Plain kitty |
|---|---|---|
| cmd+t | new tab | new tab |
| cmd+shift+[ / ] | previous / next tab | same |
| cmd+1 .. 8 | jump to tab | same |
| cmd+9 | tab 9 | last tab |
| cmd+shift+w | close tab | close tab |

## Panes / splits
| Press | Herdr window | Plain kitty |
|---|---|---|
| cmd+d | split side by side | same |
| cmd+shift+d | split stacked | same |
| cmd+w | close pane | close window |
| cmd+alt+arrows | move between panes | move between splits |
| cmd+] / cmd+[ | next / previous pane in this tab | next / previous split |
| option+h/j/k/l | move between panes (left/down/up/right) | not bound |
| cmd+shift+enter | zoom pane / back | stack layout |
| cmd+r | resize mode | resize mode |

## Editing (everywhere)
| Press | Does |
|---|---|
| option+left / right | back / forward one word |
| option+backspace | delete word before cursor |
| option+delete | delete word after cursor |
| cmd+left / right | start / end of line |
| cmd+backspace | delete to start of line |
| cmd+z | undo |

## Finding and opening things
| Press | Does |
|---|---|
| cmd+f | search scrollback (fzf) |
| cmd+shift+o | last command's output in a pager |
| cmd+o | open what you just selected (path or URL) |
| cmd+shift+e | pick a path on screen and open it |
| cmd+shift+click | open the path under the cursor |
| cmd+click | open a link |
| cmd+shift+u | pick a URL on screen and open it |
| cmd+shift+p / h / l | copy a path / hash / line from the screen |

## Font and config
cmd+= / cmd+- / cmd+0 font size, cmd+, edit kitty config, cmd+shift+, reload it.

## Herdr keys without Cmd (ctrl+b, release, then the key)
c new tab, n / p next / previous tab, 1-9 jump to tab, v / - split, x close pane,
shift+x close tab, z zoom, h/j/k/l move between panes, ? help.

## If something breaks
Backups sit next to each file as *.bak-20261013-025855:
~/.config/kitty/kitty.conf, ~/.config/herdr/config.toml, ~/.zshrc
