source ~/.zplug/init.zsh

# make prezto reository 
zplug "sorin-ionescu/prezto"
zplug load --verbose

zplug "wbinglee/zsh-wakatime"

# syntax
zplug "chrissicool/zsh-256color"
zplug "Tarrasch/zsh-colors"
zplug "zsh-users/zsh-syntax-highlighting" #defer:2
zplug "ascii-soup/zsh-url-highlighter"

# program
zplug "voronkovich/mysql.plugin.zsh"

#補完
zplug "zsh-users/zsh-completions"
# tools
#zplug "marzocchi/zsh-notify"
#zplug "oknowton/zsh-dwim"
zplug "mafredri/zsh-async"

# チェック時刻を保存して.zshrcが新しくなっているときだけ読み込む
# check コマンドで未インストール項目があるかどうか verbose にチェックし
# false のとき（つまり未インストール項目がある）y/N プロンプトで
# インストールする
if [ ! ~/.zplug/last_zshrc_check_time -nt ~/.zshrc ]; then
    touch ~/.zplug/last_zshrc_check_time
    if ! zplug check --verbose; then
       printf "Install? [y/N]: "
       if read -q; then
          echo; zplug install
       fi
    fi
fi    

# Then, source plugins and add commands to $PATH
zplug load 

# for cdr
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

#gnu commands
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# zsh-git-prompt

fpath=(/usr/local/share/zsh-completions $fpath)

# aliases
alias gip='curl ipinfo.io/ip'
alias check='brew upgrade && brew cleanup'
alias fullclean='brew cleanup --dry-run'
