# DT color scripts
colorscript random

# fastfetch
#fastfetch

# Starship
__main() {
    local major="${BASH_VERSINFO[0]}"
    local minor="${BASH_VERSINFO[1]}"

    if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
        source <(starship init bash --print-full-init)
    else
        source /dev/stdin <<<"$(starship init bash --print-full-init)"
    fi
}
__main

# zoxide is better
eval "$(zoxide init bash)"

# VI-Mode
unset -f __main
set -o vi

# main aliases
alias lua_hw="cd ~/Projects/lua/hello_world/"
alias py_hw="cd ~/Projects/python/hello_world/"
alias dev="${TERMINAL_EMULATOR} &"

# nixos
alias nixresw="pushd ~/nix && git add -A && sudo nixos-rebuild switch --flake ~/nix/ && popd"
alias nixrebo="pushd ~/nix && git add -A && sudo nixos-rebuild boot --flake ~/nix/ && popd"
alias hore="pushd ~/nix && git add -A && home-manager switch --flake ~/nix/ && popd"
alias allre="nixresw && hore"
alias allrebo="nixrebo && hore"

# quick launch
alias blt='bluetoothctl'
alias y='yazi'
alias b="btop"
alias nv="nvtop"
alias pm="pulsemixer"
alias ac="ani-cli -v"

#Lazy alias
alias conf='source ~/.bashrc'
alias c="clear"
alias n="c && colorscript random"
alias ff="c && fastfetch"
alias fu="c && uwufetch"
alias wttr="curl wttr.in/Parkersburg"

alias cp='cp -i'
alias cpd='cp -r'
alias rmd='rm -r'

alias cd='z'
alias cdi='zi'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'

alias mk="rm config.h && make && sudo make install"

# ls
alias ls='eza --group-directories-first'
alias ll="ls -Al"
alias l.='ls -A | egrep "^\."'
alias la='ls -A'
alias l="ls -l"

# (neo)vim
alias v="nvim"
alias v.="nvim ."
alias sv="sudo nvim"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='grep -E'
alias fgrep='grep -F'
alias rep='grep -i --color=auto'
alias erep='rep -E'
alias frep='rep -F'

## History & Grep
alias hg="history | grep"

## Flatpak
alias f="flatpak"
alias fup="flatpak update"

## Wayland stuff
alias xway="env -u WAYLAND_DISPLAY"

# package managment
alias pa='yay'
alias pas='yay -S'

alias p='sudo pacman'
alias ps='sudo pacman -S'
alias pss='sudo pacman -Ss'
alias pq='pacman -Q'
alias pr='sudo pacman -Rns --unneeded'
alias psyu='sudo pacman -Syu'
alias psyua='pa -Syua'

alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages (DANGEROUS!)

# get fastest mirrors
alias pacmirror="sudo reflector --country us --fastest 10 --latest 20 --protocol 'https,http' --verbose --save /etc/pacman.d/mirrorlist"

# nala for Debian/Ubuntu
alias apt="sudo nala"

# git
alias config="git --git-dir=$HOME/git/config_bare --work-tree=$HOME"

alias init="git init"
alias commit="git commit"
alias push="git push -u origin main"
alias add="git add"
alias checkout="git checkout"
alias status="git status"

alias pull="git pull"
alias clone="git clone"
