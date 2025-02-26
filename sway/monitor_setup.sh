#!/bin/bash
if swaymsg -t get_outputs | grep -q "DP-2"; then
    swaymsg output eDP-1 resolution 1920x1080 position 0 1440 scale 1
    swaymsg output DP-2 resolution 2560x1440 position 0 0 scale 1
else
    swaymsg output eDP-1 resolution 1920x1080 position 0 0 scale 1
fi
