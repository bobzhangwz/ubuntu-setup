#!/bin/bash
apt-get install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4 -y
im-switch -s ibus
apt-get install ibus-pinyin -y
apt-get install gnome-icon-theme -y

echo 'please run /usr/lib/ibus-pinyin/ibus-setup-pinyin and ibus-setup'

