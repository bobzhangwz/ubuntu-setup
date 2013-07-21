apt-get install lxc

mkdir /home/lib/lxc/lxclib /home/lib/lxc/lxccache -p
rm -rf /var/lib/lxc /var/cache/lxc
ln -s /home/lib/lxc/lxclib /var/lib/lxc
ln -s /home/lib/lxc/lxccache /var/cache/lxc

echo << EOF
auto br0
iface br0 inet dhcp
  # ethX is the interface with which the bridge should be bridged
  address 192.168.2.1
  netmask 255.255.255.0
  broadcast 192.168.2.255
  gateway 192.168.2.1

  bridge_ports wlan0
  bridge_stp off
  bridge_maxwait 5
  post-up /usr/sbin/brctl setfd br0 0
EOF << /etc/network/interfaces
