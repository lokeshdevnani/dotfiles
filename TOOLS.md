# Shell tools cheat sheet

Set up in `tools.zsh`. Try each one for a day and they stick.

## atuin: history search (Ctrl-R)
Your commands from every directory and session are searchable.
- **Ctrl-R**: opens a full-screen search. Type any part of a command. Up/Down moves, **Enter** runs it, **Tab** puts it on the line to edit.
- Ctrl-R again cycles the filter: global / this session / this directory / this host.
- `atuin stats` shows your most used commands. Nothing is sent anywhere unless you log in to sync.
- The Up arrow is left alone on purpose (`--disable-up-arrow`).

## zoxide: smarter `cd`
It learns the folders you visit. `cd` still works normally.
- `cd smarthome` jumps to the best match for "smarthome" from anywhere, if you've been there.
- `cd dot kit` matches a path that contains both words.
- `cdi` lets you pick from a list of matches. `cd -` goes back.

## fzf: fuzzy finder
- **Ctrl-T**: pick a file and paste its path at the cursor.
- **Alt-C**: pick a folder and `cd` into it (Alt = left Option).
- `vim **<Tab>`: fuzzy-complete a path. Works after `cd`, `ls`, `cat`, `kill`, `ssh` too.
- In any list: type to filter, Up/Down to move, Enter to choose, Esc to cancel.

## ripgrep (`rg`): fast search inside files
Searches the current folder, skips `.git` and anything in `.gitignore`.
- `rg TODO`: every line containing TODO, with file and line number.
- `rg -i foo`: ignore case. `rg -w foo`: whole word. `rg -F 'a.b'`: literal text, not a pattern.
- `rg -l foo`: only list file names. `rg -c foo`: count per file.
- `rg foo -t py`: only Python files. `rg foo -g '*.md'`: only files matching a glob.
- `rg -C 3 foo`: show 3 lines of context around each match.

## fd: fast file finder
- `fd readme`: files and folders with "readme" in the name. `fd -e md`: all `.md` files.
- `fd -H pattern`: include hidden files. `fd pattern ~/dev`: search somewhere specific.

## eza: better `ls`
Aliased in `tools.zsh`: `ls` (folders first), `ll` (long, hidden files, git status), `lt` (tree, 2 levels).

## bat: `cat` with colours and paging
`bat file.py`. Press `q` to leave the pager.

## jq: read JSON
`curl -s url | jq .` pretty-prints. `jq '.items[].name'` picks fields.
