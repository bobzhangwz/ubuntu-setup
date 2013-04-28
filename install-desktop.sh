#!/bin/bash
set -e
apt-get install gnome-shell gnome-tweak-tool gnome-shell-extensions
add-apt-repository ppa:bumblebee/stable
apt-get update
apt-get install bumblebee bumblebee-nvidia

