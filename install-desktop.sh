#!/bin/bash
set -e
gsettings set  org.gnome.desktop.background show-desktop-icons true
add-apt-repository  ppa:bumblebee/stable
apt-get update
# apt-get install gnome-shell* gnome-tweak-tool disper -y
apt-get install bumblebee bumblebee-nvidia -y
apt-get install ttf-wqy-zenhei rxvt-unicode-256color zsh xcompmgr lxapperance tmux -y
apt-get install xlip -y
# apt-get install grive binutils-dev -y
# ln -s /usr/lib/libbfd-2.23.2-system.so /usr/lib/libbfd-2.23-system.so
echo -e '\nblacklist acer_wmi' >> /etc/modprobe.d/blacklist.conf
