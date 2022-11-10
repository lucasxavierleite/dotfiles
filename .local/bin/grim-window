#!/usr/bin/env sh

swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"' | grim -g - - | tee $(xdg-user-dir PICTURES)/Screenshots/$(date +'Screenshot_%d-%m-%Y_%H-%M-%S.png') | wl-copy
