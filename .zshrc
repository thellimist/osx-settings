# Path to your oh-my-zsh installation.
export ZSH=/Users/furkan/.oh-my-zsh

# Theme
ZSH_THEME="robbyrussell"

# Comment this out to disable weekly auto-update checks. Oh-my-zsh updates itself.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source $ZSH/oh-my-zsh.sh

# Custom
git config --global user.name "Furkan Yilmaz"
git config --global user.email "mufuyil@gmail.com"

# Alias's
alias ls='ls -GFh'
alias rm='rm'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir="mkdir -pv"
alias fhere="find . -name "
alias sl="ls"
alias cd..="cd .."
alias ..="cd .."
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
# alias cdgo='cd $GOPATH'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'

# Creates an archive (*.tar.gz) from given directory.
function maketar() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }

# Create a ZIP archive of a file or folder.
function makezip() { zip -r "${1%%/}.zip" "$1" ; }

# rbenv path
# eval "$(rbenv init -)"
# export PATH="$HOME/.rbenv/shims:$PATH"

# postgres env path
# export PATH="/Library/PostgreSQL/9.4/bin::$PATH"

# golang env path
# export GOPATH="$HOME/Documents/Programming/go/"
# export PATH="$HOME/Documents/Programming/go/bin:$GOPATH:$PATH"

# To start docker in a given shell, run start_docker.
start_docker() {
    . "/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh"
}

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh