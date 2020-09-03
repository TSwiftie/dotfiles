#!/bin/bash

/bin/bash ~/scripts/dwm-status.sh &
picom -b
/bin/bash ~/scripts/tap-to-click.sh &
/bin/bash ~/scripts/inverse-scroll.sh &
nm-applet &
xfce4-power-manager &
#xfce4-volumed-pulse &
/bin/bash ~/scripts/run-mailsync.sh &
#~/scripts/autostart_wait.sh &
feh --bg-fill $HOME/Pictures/wallhaven1.jpg
xautolock -time 10 -locker '/usr/bin/lock' -corners ---- -cornersize 30 &
fcitx &
caffeine-indicator &
