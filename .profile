
export EDITOR='nvim'
export TERMINAL_EMULATOR="kitty"

export PATH=$HOME/.local/bin:$HOME/scripts/dm-scripts:$PATH
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

export QT_QPA_PLATFORMTHEME=qt6ct # Only use when not using kde or anything that configures qt on its own

export XDG_DATA_DIRS=/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS # Just for flatpak

#if [ "$(tty)" = "/dev/tty1" ]; then
   #pgrep Hyprland || Hyprland
   #pgrep cosmic-session || cosmic-session
   #pgrep bspwm || startx ~/.config/bspwm/xinitrc
   #pgrep dwm || startx ~/suckless/dwm-xinitrc
#fi
