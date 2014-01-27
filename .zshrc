# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew cake cloudapp coffee git git-flow jira mvn node npm svn)

DEFAULT_USER="jking"

. $ZSH/oh-my-zsh.sh

. ~/.nvm/nvm.sh

ulimit -n 2048

#export PATH=$PATH:/Users/jking/.nvm/v0.8.21/bin:./bin:/usr/local/mysql/bin:/Users/jking/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/jking/.cadmium/bin

export PATH=/usr/local/sbin:/Users/jking/.nvm/v0.10.18/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/jking/.nvm/v0.8.21/bin:./bin:/usr/local/mysql/bin:/Users/jking/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/jking/.cadmium/bin
