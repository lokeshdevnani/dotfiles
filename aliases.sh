
# Volume controls
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume output volume 100'"

# Sleep the display (locks if "require password" is set to immediately)
alias afk="pmset displaysleepnow"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

alias run_profiler="zmodload zsh/zprof; source ~/.zshrc; zprof | less"

# Profiles zsh speed - Lokesh. Basic time profiling
# https://blog.jonlu.ca/posts/speeding-up-zsh
alias shell_speed='for i in $(seq 1 10); do /usr/bin/time $SHELL -i -c exit; done'

# Go to master with fresh state
alias gfresh='gcm; gf upstream; grhh upstream/master'
