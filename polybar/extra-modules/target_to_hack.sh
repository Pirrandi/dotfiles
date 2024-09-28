#!/bin/bash

ip_address=$(cat /home/dgovalen/.config/polybar/extra-modules/target | awk '{print $1}')
machine_name=$(cat /home/dgovalen/.config/polybar/extra-modules/target | awk '{print $2}')

if [ $ip_address ] && [ $machine_name ]; then
	echo "%{F#00ff1b}󰩷  ${F#00ff1b}$ip_address%{u-} - $machine_name"
else
	echo "${F#00ff1b}󰩷  %{u-}%{F#00ff1b} No target"
fi
