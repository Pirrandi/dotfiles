#!/bin/bash

sudo apt update
sudo apt install kitty bspwm neofetch nvim polybar rofi sxhkd picom

cp -r bspwm ~/.config/
cp -r kitty ~/.config/
cp -r neofetch ~/.config/
cp -r nvim ~/.config/
cp -r picom ~/.config/
cp -r polybar ~/.config/
cp -r rofi ~/.config/
cp -r sxhkd ~/.config/

git clone https://github.com/Murzchnvok/rofi-collection
cp -r rofi-collection ~/.config/rofi/
