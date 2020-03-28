~/.bashrc ]] && source ~/.bashrc

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="$RESETCOLOR\u@\h $GREEN\w>$RESETCOLOR "
  export PS2="| → $RESETCOLOR"
}
# Call prompt to customize the prompt
prompt

# Alias's
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias ls='ls -GFh'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir="mkdir -pv"
alias fhere="find . -name "
alias sl="ls"
alias cd..="cd .."
alias ..="cd .."
alias cdgo='cd $GOPATH'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'

alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

# rbenv path
# eval "$(rbenv init -)"
# export PATH="$HOME/.rbenv/shims:$PATH"

# postgres env path
# export PATH="/Library/PostgreSQL/9.4/bin::$PATH"

# golang env path
# export GOPATH="$HOME/Documents/Programming/go/"
# export PATH="$HOME/Documents/Programming/go/bin:$GOPATH:$PATH"

# To start docker in a given shell, run start_docker.
# start_docker() {
#     . "/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh"
# }

# Creates an archive (*.tar.gz) from given directory.
function maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# Create a ZIP archive of a file or folder.
function makezip() { zip -r "${1%%/}.zip" "$1" ; }
