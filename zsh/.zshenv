#--------------------------------------------------------------#
#           Environment Variables                              #
#--------------------------------------------------------------#


# autoload
autoload -Uz add-zsh-hook
autoload -Uz compinit && compinit -u

# LANGUAGE
export LANGUAGE="en_US.UTF-8"
export LANG="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"
export LC_CTYPE="${LANGUAGE}"

# PIPENV_VENV_IN_PROJECT
export PIPENV_VENV_IN_PROJECT=true

# current node PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

# brew formulae PATH
export PATH="/usr/local/sbin:$PATH"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# uv
export PATH="$HOME/.local/bin:$PATH"

# Added by Windsurf
export PATH="$HOME/.codeium/windsurf/bin:$PATH"
