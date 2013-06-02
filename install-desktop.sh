#!/bin/bash
set -e
add-apt-repository  ppa:bumblebee/stable
apt-get update
# apt-get install gnome-shell* gnome-tweak-tool disper -y
apt-get install bumblebee bumblebee-nvidia -y


apt-get install grive binutils-dev -y
ln -s /usr/lib/libbfd-2.23.2-system.so /usr/lib/libbfd-2.23-system.so
echo '\nblacklist acer_wmi' >> /etc/modprobe.d/blacklist.conf
