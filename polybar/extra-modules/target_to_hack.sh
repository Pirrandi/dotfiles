#!/bin/bash

ip_address=$(cat ~/.config/polybar/extra-modules/target | awk '{print $1}')
machine_name=$(cat ~/.config/polybar/extra-modules/target | awk '{print $2}')
foreground_color=$(grep 'FOREGROUND' ~/.config/polybar/colors | awk -F '= ' '{print $2}')

if [ $ip_address ] && [ $machine_name ]; then
	echo "%{F$foreground_color}󰩷  %{F$foreground_color}$ip_address%{u-} - $machine_name"
else
	echo "%{F$foreground_color}󰩷  %{u-}%{F$foreground_color} No target"
fi
