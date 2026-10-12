#!/bin/bash
# Open a path or URL (usually one printed by an agent inside Herdr) with macOS `open`.
#   --clip   use the first line of the clipboard (herdr copies mouse selections there)
#   (args)   use the arguments, e.g. from kitty's hints or a Cmd+Shift+click
# https://...  -> default browser. A trailing :LINE[:COL] is ignored.
# Relative paths are tried in the focused herdr pane's directory, then the other panes',
# then searched for under ~ (newest match wins).

notify() { /usr/bin/osascript -e "display notification \"$1\" with title \"$2\""; }

if [[ "$1" == "--clip" ]]; then
  raw="$(/usr/bin/pbpaste | /usr/bin/sed -n '/[^[:space:]]/{p;q;}')"
else
  raw="$*"
fi
raw="${raw#"${raw%%[![:space:]]*}"}"; raw="${raw%"${raw##*[![:space:]]}"}"
raw="${raw%[,.;:)]}"
raw="${raw#[\`\"\'(]}"; raw="${raw%[\`\"\']}"
raw="${raw#file://}"

if [[ -z "$raw" ]]; then
  notify "Select a path or URL first" "Nothing to open"
  exit 1
fi
if [[ "$raw" =~ ^https?:// ]]; then
  exec /usr/bin/open "$raw"
fi

if [[ "$raw" =~ ^(.+):([0-9]+):([0-9]+)$ ]]; then raw="${BASH_REMATCH[1]}"
elif [[ "$raw" =~ ^(.+):([0-9]+)$ ]]; then raw="${BASH_REMATCH[1]}"; fi
raw="${raw/#\~/$HOME}"

path=""
if [[ "$raw" == /* ]]; then
  path="$raw"
else
  dirs="$("$HOME/.local/bin/herdr" pane list 2>/dev/null \
    | /usr/local/bin/jq -r '.result.panes | sort_by(.focused | not) | .[] | .foreground_cwd // .cwd' \
    | /usr/bin/awk '!seen[$0]++')"
  while IFS= read -r d; do
    [[ -n "$d" && -e "$d/$raw" ]] && { path="$d/$raw"; break; }
  done <<< "$dirs"
  [[ -z "$path" && -e "$PWD/$raw" ]] && path="$PWD/$raw"
  if [[ -z "$path" ]]; then
    path="$(/usr/bin/find "$HOME" -maxdepth 6 \
        \( -name Library -o -name node_modules -o -name .git -o -name .Trash -o -name .venv \) -prune \
        -o -path "*/$raw" -exec /usr/bin/stat -f '%m %N' {} + 2>/dev/null \
      | /usr/bin/sort -rn | /usr/bin/head -1 | /usr/bin/cut -d' ' -f2-)"
  fi
fi

if [[ -z "$path" || ! -e "$path" ]]; then
  notify "${path:-$raw}" "Path not found"
  exit 1
fi
exec /usr/bin/open "$path"
