#!/bin/bash
set -q
# wget http://downloads.typesafe.com.s3.amazonaws.com/scalaide-pack/2.1.0.m2-29-20121023/scala-SDK-2.1-M2-2.9-linux.gtk.x86_64.tar.gz
# tar -xvf scala-SDK-2.1-M2-2.9-linux.gtk.x86_64.tar.gz
# rm scala-SDK-2.1-M2-2.9-linux.gtk.x86_64.tar.gz -fr
# mkdir /home/Software/

mv eclipse /home/software/
ln -s /home/software/eclipse/eclipse /bin/eclipse
mkdir /home/workspace/ -p

wget http://nchc.dl.sourceforge.net/project/eclim/eclim/2.2.5/eclim_2.2.5.jar
java  -Dvim.skip=true -Declipse.home=/home/software/eclipse -jar eclim_2.2.5.jar install
# wget http://apt.typesafe.com/repo-deb-build-0002.deb
# dpkg -i repo-deb-build-0002.deb
# rm repo-deb-build-0002.deb -fr
# apt-get update
# apt-get install typesafe-stack

echo 'view this http://zengrong.net/post/1024.htm ' 
