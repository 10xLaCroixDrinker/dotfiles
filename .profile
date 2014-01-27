parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

function prom {

local RED="\[\033[0;31m\]"
local LIGHT_RED="\[\033[1;31m\]"
local NO_COLOUR="\[\033[0m\]"
local BLUE="\[\033[0;34m\]"
local LIGHT_BLUE="\[\033[1;34m\]"
local PURPLE="\[\033[00;35m\]"
local CYAN='\e[0;36m'

# [\u:$LIGHT_RED\w$NO_COLOUR]\
PS1="${TITLEBAR}\$NO_COLOUR\[$LIGHT_BLUE\h$NO_COLOUR:$LIGHT_RED\w$NO_COLOUR\$NO_COLOUR:$PURPLE\$(parse_git_branch) $NO_COLOUR\$ "
PS2='> '
PS4='+ '
}

prom

DEPLOY_LOCATION="/Library/Application Support/jboss/deploy"
USER_EMAIL=jimmy.king@meltmedia.com
DEFAULT_USER=jking@jking

export DEPLOY_LOCATION USER_EMAIL
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

export PATH=/usr/local/mysql/bin:${HOME}/bin:$PATH
export SVN_EDITOR=vi
export NODE_PATH=/usr/local/lib/node_modules/

#complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\[" | grep -v "%" `; echo `grep "Host " ~/.ssh/config | cut -d " " -f 2`)" ssh

export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=128m"


export PATH="./bin:$PATH" 


#PS1='\[\033[01;31m\]\w\[\033[00;35m\]$(parse_git_branch)\[\033[00m\] \$ '

 
#PS1='\[\033[01;37m\]\w\[\033[00;35m\]$(parse_git_branch)\[\033[00m\] \$ '

. ~/.nvm/nvm.sh

export PATH="$PATH:/Users/jking/.cadmium/bin"

alias tika='java -jar ~/.jar/tika-app-1.3.jar'
alias saxon='java -jar ~/.jar/saxon-9.1.0.8.jar'
ulimit -n 2048
