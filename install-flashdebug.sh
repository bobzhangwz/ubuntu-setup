#!/bin/bash

set -e
apt-get install flashplugin-installer nspluginwrapper ia32-libs -y
wget http://fpdownload.macromedia.com/pub/flashplayer/updaters/11/flashplayer_11_plugin_debug.i386.tar.gz
tar -xvf flashplayer_11_plugin_debug.i386.tar.gz
cp /usr/lib/flashplugin-installer/libflashplayer.so /usr/lib/flashplugin-installer/libflashplayer.so.bk

mv libflashplayer.so /usr/lib/flashplugin-installer/libflashplayer.so

rm usr/ flashplayer_11_plugin_debug.i386.tar.gz -fr


nspluginwrapper -i /usr/lib/flashplugin-installer/libflashplayer.so

echo "set security http://www.macromedia.com/support/documentation/cn/flashplayer/help/settings_manager04.html"
