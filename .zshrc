#------------------------------------------------------------------#
# File:     .zshrc   ZSH resource file                             #
# Author:   @da8ma <ryo.8mada1020@gmail.com>			   #
#------------------------------------------------------------------#

# --------------------------------------------------
#  zplugin
# --------------------------------------------------

### Added by Zplugin's installer
source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin

# Prompt theme
zplugin load denysdovhan/spaceship-prompt

zplugin light zsh-users/zsh-autosuggestions
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
alias docker-jupyter='docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work jupyter/datascience-notebook'
alias console-login='minicom --device /dev/tty.usbserial --baudrate 19200'
alias be='bundle exec'
alias bundle='bundle _1.16.2_'
#alias ping='ping -c 5'

## Custom iTerm2 titlebar background colors
#echo -e "\033]6;1;bg;red;brightness;40\a"
#echo -e "\033]6;1;bg;green;brightness;44\a"
#echo -e "\033]6;1;bg;blue;brightness;52\a"

## Path

# gnu-sed
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

# for rbenv
if which rbenv >/dev/null; then
    eval "$(rbenv init -)"
    export PATH=$HOME/.rbenv/bin:$PATH
fi

# In order for gpg to find gpg-agent, gpg-agent must be running, and there must be an env
# variable pointing GPG to the gpg-agent socket. This little script, which must be sourced
# in your shell's init script (ie, .bash_profile, .zshrc, whatever), will either start
# gpg-agent or set up the GPG_AGENT_INFO variable if it's already running.

# Add the following to your shell init to set up gpg-agent automatically for every shell
if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
    source ~/.gnupg/.gpg-agent-info
    export GPG_AGENT_INFO
fi

