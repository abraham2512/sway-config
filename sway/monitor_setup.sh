#!/bin/bash
if swaymsg -t get_outputs | grep -q "DP-3"; then
    swaymsg output eDP-1 resolution 1920x1080 position 0 1440 scale 1
    swaymsg output DP-3 resolution 2560x1440 position 0 0 scale 1
elif swaymsg -t get_outputs | grep -q "HDMI-A-1"; then
    swaymsg output eDP-1 resolution 1920x1080 position 0 1080 scale 1
    swaymsg output HDMI-A-1 resolution 1920x1080 position 0 0 scale 1
elif swaymsg -t get_outputs | grep -q "DP-7"; then
    swaymsg output eDP-1 resolution 1920x1080 position 2560 0 scale 1
    swaymsg output DP-7 resolution 2560x1440 position 0 0 scale 1
fi
