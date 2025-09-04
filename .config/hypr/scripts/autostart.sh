#!/usr/bin/env bash

#xwaylandvideobridge --qwindowtitle xwlvb &
#/usr/lib/polkit-kde-authentication-agent-1 &
/usr/lib/xdg-desktop-portal-hyprland &
hypridle &
wlsunset.sh &

hyprpaper &
waybar &
swaync &

sleep 1

mullvad-vpn &
qbittorrent &
#nm-applet &
#blueman-applet &

steam &
brave &
spotify &
ghostty --title="autostartTerm"

disown

exit
