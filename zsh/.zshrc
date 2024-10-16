#------------------------------------------------------------------#
# File:     .zshrc   ZSH resource file                             #
# Author:   @da8ma <ryo.8mada1020@gmail.com>			   #
#------------------------------------------------------------------#

# --------------------------------------------------
#  zinit
# --------------------------------------------------

### Added by Zinit's installer
#if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
#    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
#    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
#    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.zinit/bin" && \
#        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
#        print -P "%F{160}▓▒░ The clone has failed.%f%b"
#fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source $HOME/.zinit/bin/zinit.zsh

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Prompt theme
zinit load spaceship-prompt/spaceship-prompt
#eval "$(starship init zsh)"

# A glance at the new for-syntax – load all of the above
# plugins with a single command. For more information see:
# https://zdharma.github.io/zinit/wiki/For-Syntax/
zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
    light-mode  zdharma-continuum/fast-syntax-highlighting \
                zdharma-continuum/history-search-multi-word 

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

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

## Always load alias.zsh if it exists
if [ -f "$HOME/.zsh/alias.zsh" ]; then
 source "$HOME/.zsh/alias.zsh"
fi

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

# enable Yubikey authentification for the SSH client
#xport GPG_TTY=$(tty)
#export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
#gpgconf --launch gpg-agent
#gpg-connect-agent /bye 2>/dev/null
#gpg-connect-agent updatestartuptty /bye 2>/dev/null

# Add the following to your shell init to set up gpg-agent automatically for every shell
#if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
#  . "$HOME"/.gnupg/.gpg-agent-info
#  export GPG_AGENT_INFO
#fi


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/r.yamada/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
