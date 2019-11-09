## fisher auto installation
## https://github.com/jorgebucaran/fisher#bootstrap-installation

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# variables
set -x LC_ALL en_US.UTF-8
set -x PIPENV_VENV_IN_PROJECT 1


# PATH
set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -g fish_prompt_pwd_dir_length 0

