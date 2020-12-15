#! /bin/bash
datenow=$(date +"%d.%m_%H:%M:%S")
import ~/Pictures/Screenshots/$(date +"%d.%m_%H:%M:%S")_area.png
xclip -selection clipboard -t image/png $(echo -n ~/Pictures/Screenshots/$(ls -Art ~/Pictures/Screenshots | tail -n 1))
notify-send "Area screenshot copied" $(ls -Art ~/Pictures/Screenshots | tail -n 1)
