# Terminal productivity cheatsheet

Terminal shortcuts (kitty, herdr, zsh) and the shell tools set up in `tools.zsh`.
In a herdr window, Cmd keys drive herdr. In a plain kitty window they drive kitty.
Herdr's own help: ctrl+b then ?

In a herdr window, Cmd keys drive herdr. In a plain kitty window they drive kitty.
Herdr's own help: ctrl+b then ?

## Shortcuts

### Tabs
| Press | Herdr window | Plain kitty |
|---|---|---|
| cmd+t | new tab | new tab |
| cmd+shift+[ / ] | previous / next tab | same |
| cmd+1 .. 8 | jump to tab | same |
| cmd+9 | tab 9 | last tab |
| cmd+shift+w | close tab | close tab |

### Panes / splits
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

### Editing (everywhere)
| Press | Does |
|---|---|
| option+left / right | back / forward one word |
| option+backspace | delete word before cursor |
| option+delete | delete word after cursor |
| cmd+left / right | start / end of line |
| cmd+backspace | delete to start of line |
| cmd+z | undo |

### Finding and opening things
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

### Font and config
cmd+= / cmd+- / cmd+0 font size, cmd+, edit kitty config, cmd+shift+, reload it.

### Herdr keys without Cmd (ctrl+b, release, then the key)
c new tab, n / p next / previous tab, 1-9 jump to tab, v / - split, x close pane,
shift+x close tab, z zoom, h/j/k/l move between panes, ? help.

## Shell tools

Set up in `tools.zsh`. Try each one for a day and they stick.

### atuin: history search (Ctrl-R)
Your commands from every directory and session are searchable.
- **Ctrl-R**: opens a full-screen search. Type any part of a command. Up/Down moves, **Enter** runs it, **Tab** puts it on the line to edit.
- Ctrl-R again cycles the filter: global / this session / this directory / this host.
- `atuin stats` shows your most used commands. Nothing is sent anywhere unless you log in to sync.
- The Up arrow is left alone on purpose (`--disable-up-arrow`).

### zoxide: smarter `cd`
It learns the folders you visit. `cd` still works normally.
- `cd smarthome` jumps to the best match for "smarthome" from anywhere, if you've been there.
- `cd dot kit` matches a path that contains both words.
- `cdi` lets you pick from a list of matches. `cd -` goes back.

### fzf: fuzzy finder
- **Ctrl-T**: pick a file and paste its path at the cursor.
- **Alt-C**: pick a folder and `cd` into it (Alt = left Option).
- `vim **<Tab>`: fuzzy-complete a path. Works after `cd`, `ls`, `cat`, `kill`, `ssh` too.
- In any list: type to filter, Up/Down to move, Enter to choose, Esc to cancel.

### ripgrep (`rg`): fast search inside files
Searches the current folder, skips `.git` and anything in `.gitignore`.
- `rg TODO`: every line containing TODO, with file and line number.
- `rg -i foo`: ignore case. `rg -w foo`: whole word. `rg -F 'a.b'`: literal text, not a pattern.
- `rg -l foo`: only list file names. `rg -c foo`: count per file.
- `rg foo -t py`: only Python files. `rg foo -g '*.md'`: only files matching a glob.
- `rg -C 3 foo`: show 3 lines of context around each match.

### fd: fast file finder
- `fd readme`: files and folders with "readme" in the name. `fd -e md`: all `.md` files.
- `fd -H pattern`: include hidden files. `fd pattern ~/dev`: search somewhere specific.

### eza: better `ls`
Aliased in `tools.zsh`: `ls` (folders first), `ll` (long, hidden files, git status), `lt` (tree, 2 levels).

### bat: `cat` with colours and paging
`bat file.py`. Press `q` to leave the pager.

### jq: read JSON
`curl -s url | jq .` pretty-prints. `jq '.items[].name'` picks fields.

## If something breaks
Backups sit next to each file as *.bak-20261013-025855:
~/.config/kitty/kitty.conf, ~/.config/herdr/config.toml, ~/.zshrc
