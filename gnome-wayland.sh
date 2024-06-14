#!/bin/bash

echo 'Package maintener'
echo '1. haydar kamilhaydar03@gmial.com'
echo '2. baihaqi baihaqia442@gmail.com'
sleeps 2 

# uninstall for xorg and xorg-server
sudo pacman -Rc xorg xorg-server &&

# install gnome dependecies
sudo pacman -S gnome xorg-xwayland xorg-xlsclients NetworkManager gnome-tweaks &&

# disable iwd
sudo systemctl disable iwd.servide &&

#add xwayland gnome-session on tty
echo "if [[ -z $DISPLAY && $(tty) == /dev/tty1 && $XDG_SESSION_TYPE == tty ]]; then QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session fi" >> ~/.bash_profile

