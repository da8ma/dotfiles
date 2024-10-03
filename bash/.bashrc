#
#
# ._______ .______  .________.___.__  .______  ._______     
# : __   / :      \ |    ___/:   |  \ : __   \ :_.  ___\    
# |  |>  \ |   .   ||___    \|   :   ||  \____||  : |/\     
# |  |>   \|   :   ||       /|   .   ||   :  \ |    /  \    
# |_______/|___|   ||__:___/ |___|   ||   |___\|. _____/    
#              |___|   :         |___||___|     :/          
#
#

# Global
export EDITOR=vim
export LANG=en_US.UTF-8


# Function part

c_red="\e[31m"
c_gre="\e[32m"
c_yel="\e[33m"
c_blu="\e[34m"
c_mag="\e[35m"
c_cya="\e[36m"
c_off="\e[m"


# Aliases

bash_alias(){
    # For mac, aliases
    alias gip='curl ipinfo.io/ip'
    alias grep='grep --color=auto'
    alias grep='egrep --color=auto'
    alias ls='ls -FG'
    alias ll='ls -FGal'
    alias ls='ls -F --color=auto'
    alias ll='ls -Fal --color=auto'
}
 

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/r.yamada/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
