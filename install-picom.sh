#!/bin/bash
echo "\n[+] Instalando Picom...\n"

sudo apt install libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev meson ninja-build uthash-dev make git

echo "\n[+] Clonando repositorio pijulius/picom.\n"

git clone https://github.com/pijulius/picom
cd picom
meson setup --buildtype=release build
ninja -C build
ninja -C build install

