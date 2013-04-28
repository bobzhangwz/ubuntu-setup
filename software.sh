#!/bin/bash
set -e

# Install chrome and virtualBox && 

# wget https://dl.google.com/linux/direct/google-talkplugin_current_amd64.deb
# dpkg -i google-*.deb
# apt-get install -f
# rm *google*.deb*

wget -q https://dl-ssl.google.com/linux/linux_signing_key.pub -0-  | sudo apt-key add -

cat >> /etc/apt/sources.list <<EOF
deb http://dl.google.com/linux/chrome/deb/ stable main

deb http://download.virtualbox.org/virtualbox/debian precise contrib
deb http://download.virtualbox.org/virtualbox/debian oneiric contrib
deb http://download.virtualbox.org/virtualbox/debian natty contrib
deb http://download.virtualbox.org/virtualbox/debian maverick contrib non-free
deb http://download.virtualbox.org/virtualbox/debian lucid contrib non-free
deb http://download.virtualbox.org/virtualbox/debian karmic contrib non-free
deb http://download.virtualbox.org/virtualbox/debian hardy contrib non-free
deb http://download.virtualbox.org/virtualbox/debian wheezy contrib
deb http://download.virtualbox.org/virtualbox/debian squeeze contrib non-free
deb http://download.virtualbox.org/virtualbox/debian lenny contrib non-free
EOF

wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
apt-get update
apt-get install synapse sysv-rc-conf -y
apt-get install virtualbox-4.2 dkms  google-chrome-stable -y
