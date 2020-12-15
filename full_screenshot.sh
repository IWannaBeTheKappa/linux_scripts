#! /bin/bash
datenow=$(date +"%d.%m_%H:%M:%S")
import -window root ~/Pictures/Screenshots/$(date +"%d.%m_%H:%M:%S")_full.png
xclip -selection clipboard -t image/png $(echo -n ~/Pictures/Screenshots/$(ls -Art ~/Pictures/Screenshots | tail -n 1))
notify-send "Fullscreen screenshot copied" $(ls -Art ~/Pictures/Screenshots | tail -n 1)
