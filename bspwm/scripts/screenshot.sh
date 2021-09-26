#!/bin/bash

# options to be displayed
option0=" screen"
option1=" area"
option2="类 window"

# options to be displyed
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" |  rofi -dmenu\
                  -i\
                  -config "~/.config/rofi/powermenu.rasi"\
                  -font "FantasqueSansMono Nerd Font 12"\
		  -theme-str 'window {width: 300;}' \
                  -scrollbar-width "0" )"
case $selected in
    $option0)
        cd ~/Pictures/ && sleep 1 && scrot;;
    $option1)
        cd ~/Pictures/ && scrot -s --exec 'xclip -selection clipboard -target image/png -in $f' ;;
    $option2)
        cd ~/Pictures/ && sleep 1 && scrot -u;;
esac

