#!/bin/sh

echo "%{F#00ff1b}󰈀  %{F#00ff1b}$(/usr/sbin/ifconfig eth1 | grep "inet " | awk '{print $2}')%{u-}"
