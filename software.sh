#!/bin/bash
set -e

# Install chrome and virtualBox &&

wget -q https://dl-ssl.google.com/linux/linux_signing_key.pub -O-  | sudo apt-key add -

# cat >> /etc/apt/sources.list <<EOF
# deb http://dl.google.com/linux/chrome/deb/ stable main
# EOF

# ryan 67603-AGMX1-V1ID2-3L1AB-S6HYM-8O5M7
# deb http://download.virtualbox.org/virtualbox/debian precise contrib
# deb http://download.virtualbox.org/virtualbox/debian oneiric contrib
# deb http://download.virtualbox.org/virtualbox/debian natty contrib
# deb http://download.virtualbox.org/virtualbox/debian maverick contrib non-free
# deb http://download.virtualbox.org/virtualbox/debian lucid contrib non-free
# deb http://download.virtualbox.org/virtualbox/debian karmic contrib non-free
# deb http://download.virtualbox.org/virtualbox/debian hardy contrib non-free
# deb http://download.virtualbox.org/virtualbox/debian wheezy contrib
# deb http://download.virtualbox.org/virtualbox/debian squeeze contrib non-free
# deb http://download.virtualbox.org/virtualbox/debian lenny contrib non-free


# wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
add-apt-repository ppa:fcitx-team/nightly

apt-get update
apt-get install synapse sysv-rc-conf -y
apt-get install  google-chrome-stable -y


# sougou
apt-get install fcitx-sogoupinyin im-switch -y
im-switch -s fcitx -z default
im-switch -c

echo "install skin here http://pan.baidu.com/share/link?shareid=591843&uk=4060302862"
