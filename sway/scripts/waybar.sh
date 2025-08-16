#!/usr/bin/env bash

killall waybar
waybar &
disown

exit 0
