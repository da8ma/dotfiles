# --------------------------------------------------
#  Aliases
# --------------------------------------------------

alias gip='curl ipinfo.io/ip'
alias getpass='openssl rand -base64 10'
alias check='brew upgrade'
alias d='docker'
alias dc='docker-compose'
alias drmi='docker rmi'
alias be='bundle exec'

# Conditional aliases based on OS type
if [ "$(uname)" = "Darwin" ]; then
  alias ls="ls -FG"
  alias ll="ls -FGal"
  alias draw.io="/Applications/draw.io.app/Contents/MacOS/draw.io"
elif [ "$(uname)" = "Linux" ]; then
  alias ls="ls --color=auto -sCF"
fi