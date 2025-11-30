addToPATH() {
   export PATH=$1:$PATH
}
addToPATH ~/.config/emacs/bin
addToPATH ~/.local/bin
addToPATH ~/scripts/dm-scripts
addToPATH ~/.zig

# VI-Mode
unset -f __main
set -o vi

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
alias wttr="curl wttr.in/Parkersburg?u"

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
alias ll="ls -Ahl"
alias l="ls -lh"
alias l.='ls -A | grep -E "^\."'
alias la='ls -A'

# (neo)vim
alias v="nvim"
alias v.="nvim ."
alias sv="sudo nvim"

alias grep='grep --color=auto'

## History & Grep
alias hg="history | grep"

## Flatpak
alias f="flatpak"
alias fup="flatpak update"

## Wayland stuff
alias xway="env -u WAYLAND_DISPLAY"

# package managment
alias pa='paru'
alias pas='paru -S'

alias p='sudo pacman'
alias ps='sudo pacman -S'
alias pq='pacman -Q'
alias pr='sudo pacman -Rns --unneeded'

alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)' # remove orphaned packages (DANGEROUS!)

# get fastest mirrors
alias pacmirror="sudo reflector --country us --fastest 10 --latest 20 --protocol 'https' --verbose --save /etc/pacman.d/mirrorlist"
