export MY_TERM='ghostty'
export EDITOR='nvim'
export XDG_DATA_DIRS=/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS # Just for flatpak
#export QT_QPA_PLATFORMTHEME="qt6ct" # Only use when not using kde or anything that configures qt on its own

if [ "$(tty)" = "/dev/tty1" ]; then
   pgrep Hyprland || start-hyprland
   #pgrep niri || niri --session
   #pgrep lxqt-session || startlxqtwayland

   #pgrep bspwm || startx ~/.config/bspwm/xinitrc

   #pgrep cosmic-session || start-cosmic # This is broken idkw \_||_/
   #pgrep sway || sway
fi
