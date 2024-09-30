#!/bin/bash

sudo apt update
sudo apt install kitty bspwm neofetch neovim polybar rofi sxhkd picom feh

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

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip
sudo mv Hack.zip /usr/local/share/fonts
sudo unzip /usr/local/share/fonts/Hack.zip
sudo rm /usr/local/share/fonts/Hack.zip
