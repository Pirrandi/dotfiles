#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')
foreground_color=$(grep 'FOREGROUND' ~/.config/polybar/colors | awk -F '= ' '{print $2}')


if [ "$IFACE" = "tun0" ]; then
	echo "%{F$foreground_color}󰆧 %{F$foreground_color}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')%{u-}"
else
	echo "%{F$foreground_color}󰆧 %{u-} Disconnected"
fi
