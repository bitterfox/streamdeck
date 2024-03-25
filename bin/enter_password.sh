#!/bin/bash

pass=$1

wid=`xdotool getwindowfocus`
wm_class=`xprop -id $wid | grep "^WM_CLASS" | cut -d '"' -f2`


if [[ $wm_class == "slack" ]]; then
    echo "Do not enter password into $wm_class"
    exit 1
fi
echo "Enter password into $wm_class"
xdotool type "$pass"
xdotool key Return
