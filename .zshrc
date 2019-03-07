#------------------------------------------------------------------#
# File:     .zshrc   ZSH resource file                             #
# Author:   @ryo_8ma <ryo.8mada1020@gmail.com>			   #
#------------------------------------------------------------------#

# --------------------------------------------------
#  zplugin
# --------------------------------------------------

### Added by Zplugin's installer
source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin

zplugin load denysdovhan/spaceship-prompt
zplugin light zdharma/fast-syntax-highlighting

(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

# --------------------------------------------------
#  general
# --------------------------------------------------

autoload -Uz colors
colors

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS

# --------------------------------------------------
#  command config
# --------------------------------------------------

# set aliases

if [ "$(uname)" = Darwin ]; then
    alias ls='ls -FG'
    alias ll='ls -FGal'
elif [ "$(uname)" = Linux ]; then
    alias ls='ls --color=auto -sCF'
fi

alias gip='curl ipinfo.io/ip'
alias getpass='openssl rand -base64 10'
alias check='brew upgrade'
alias fullclean='brew cleanup --dry-run'
alias docker-jupyter='docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/datascience-notebook'
alias console-login='minicom --device /dev/tty.usbserial --baudrate 19200'
#alias ping='ping -c 5'

## Custom iTerm2 titlebar background colors
#echo -e "\033]6;1;bg;red;brightness;40\a"
#echo -e "\033]6;1;bg;green;brightness;44\a"
#echo -e "\033]6;1;bg;blue;brightness;52\a"

## Path

# gnu-sed
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
