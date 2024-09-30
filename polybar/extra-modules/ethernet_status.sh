#!/bin/sh
foreground_color=$(grep 'FOREGROUND' ~/.config/polybar/colors | awk -F '= ' '{print $2}')

echo "%{F$foreground_color}󰈀  %{F$foreground_color}$(/usr/sbin/ifconfig eth1 | grep "inet " | awk '{print $2}')%{u-}"
