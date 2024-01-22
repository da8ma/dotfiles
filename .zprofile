# parallels
export VAGRANT_DEFAULT_PROVIDER=parallels

# color
export TERM=xterm-256color

# for nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Apple Silicon
if [ "$(uname -m)" = "arm64" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="/opt/homebrew/bin:$PATH"
else
  eval "$(/usr/local/bin/brew shellenv)"
fi

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
