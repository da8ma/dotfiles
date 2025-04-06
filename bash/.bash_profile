# reference
# https://techracho.bpsinc.jp/hachi8833/2019_06_06/66396

if [ -f "${HOME}/.profile" ]; then
    source "${HOME}/.profile"
fi

if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
fi

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="$HOME/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
