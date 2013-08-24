#!/bin/bash
set -e

apt-get install aptitude python-keyring python-statgrab ttf-ubuntu-font-family hddtemp curl lm-sensors conky-all -y
chmod u+s /usr/sbin/hddtemp
sensors-detect

apt-get install dzen2 trayer

echo "http://forum.ubuntu.org.cn/viewtopic.php?t=313031"
