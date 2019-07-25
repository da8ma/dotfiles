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
