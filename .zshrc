# --------------------------------------------------
#  zplug
# --------------------------------------------------

# use zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

## theme
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme

# load
zplug load --verbose

# --------------------------------------------------
#  general
# --------------------------------------------------

autoload -Uz colors
colors

### complement ###
autoload -U add-zsh-hook
autoload -Uz compinit
compinit

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS

# --------------------------------------------------
#  command config
# --------------------------------------------------

# set aliases
alias gip='curl ipinfo.io/ip'
alias ls='ls -FG'
alias ll='ls -FGal'
alias getpass='openssl rand -base64 10'
alias check='brew upgrade'
alias fullclean='brew cleanup --dry-run'
alias docker-jupyter='docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/datascience-notebook'
#alias ping='ping -c 5'

## Custom iTerm2 titlebar background colors
#echo -e "\033]6;1;bg;red;brightness;40\a"
#echo -e "\033]6;1;bg;green;brightness;44\a"
#echo -e "\033]6;1;bg;blue;brightness;52\a"

## Path

# gnu-sed
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
