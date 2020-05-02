plugins=(
  
  kubectl
  # adds a bunch of git aliases. See aliases here. https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git . Repo here https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git
  git 

  # docker autocompletions https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/docker
  docker 

  # shell command autocompletions https://github.com/zsh-users/zsh-autosuggestions
  zsh-autosuggestions 

  # aws cli autocompletions https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/aws
  # Note: While profiling, figured out that aws plugin is freaking slow
  # aws 

  # color man pages https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/colored-man-pages
  colored-man-pages 

  # use ccat to syntax highlight "catted out filed" https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/colorize
  # NOTE: YOU MUST INSTALL `pygments` python package. Easiest way to do this is through `pip` python package manager.
  # Once you install it, restart terminal and you should be good.
  colorize

  # type "copydir" to copy the current directory to system clipboard. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/copydir 
  copydir 

  # type "copyfile" to copy contents of a file to system clipboard. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/copyfile
  copyfile 

  # type "gi [TEMPLATENAME] >> .gitignore" using templates from https://www.gitignore.io/ to use one of the templates. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/gitignore
  gitignore

  # use "h" to view command history or "hsi [argument]" to search for argument in history using grep https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/history
  history

  # adds "src" command to reload the zsh session after editing this file https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/zsh_reload
  zsh_reload

  # adds npm autocompletion as well as useful aliases https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm
  npm

  # adds "node-docs [libaryname]" command to open the documentation for that package https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm
  node

  # adds "extract [filename]" command to unzip compressed files like tar, zip, etc. https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/extract
  extract

  # adds autojump navigation tool for navigating to directories.
  # use j "full or partial directory name" to go to that directory
  # or "jc" for child directory
  # or "jo" to open file manager to that directory
  # or "jco" to open file manager in child directory
  # https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/autojump

  # NOTE: For me, this by itself didn't work. I instead ran `brew install autojump` then put 
  # `[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh` at the bottom of this file.
  # FINAL NOTE: Commands will only work on directories which have been visited before as it uses history
  #autojump

  # adds aliases for opening finder window from terminal and others
  # "tab" - Opens current directory in new tab
  # "pfd" - Returns path of frontmost Finder window
  # "ofd" - Open current directory in Finder window
  # "cdf" - Change to current finder directory
  # "quick-look" Quick-Look a specified file
  # https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/osx
  osx
  
  # https://github.com/burke/zeus
  zeus

  # shows you tips for aliases you can use
  # https://github.com/djui/alias-tips
  alias-tips 
)
