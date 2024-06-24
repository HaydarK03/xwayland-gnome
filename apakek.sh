#!/bin/bash

echo 'Package maintener'
echo '1. haydar kamilhaydar03@gmail.com'
echo '2. baihaqi baihaqia442@gmail.com'
sleep 2

# install gnome dependecies
sudo pacman -S gnome xorg-xwayland xorg-xlsclients networkmanager gnome-tweaks pipewire sof-firmware&&
	# disable iwd
	sudo systemctl disable iwd.service &&
	sudo systemctl stop iwd.service &&
	# enable NetworkManager
	sudo systemctl enable NetworkManager &&
	sudo systemctl start NetworkManager &&
	# enable bluetooth
	sudo systemctl enable bluetooth &&
	sudo systemctl start bluetooth &&
	# enable pipewire
	systemctl --user enable pipewire &&
	cd /home &&
	variableA=$(ls)
	sudo usermod -aG wheel "$variableA"

#add xwayland gnome-session on tty
echo 'if [[ -z $DISPLAY && $(tty) == /dev/tty1 && $XDG_SESSION_TYPE == tty ]]; then QT_QPA_PLATFORM=wayland XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session' >>~/.bash_profile
echo 'fi' >>~/.bash_profile
