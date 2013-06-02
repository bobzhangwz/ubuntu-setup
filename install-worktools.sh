#!/bin/bash
set -q

sudo apt-get install openjdk-7-jdk tomcat7 maven2 ant mysql-server lighttpd -y
apt-get install git python-pip ffmpeg stunnel libavcodec-extra-53 -y
pip install boto
apt-get install python-software-properties -y
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install nodejs -y
npm install -g brunch karma

npm install jshint swank-js csslint coffee-script -g

npm install jasmine-node -g

# mv eclipse /home/software/
ln -s /home/software/eclipse/eclipse /usr/local/bin/eclipse
mkdir /home/workspace/ -p

# wget http://nchc.dl.sourceforge.net/project/eclim/eclim/2.2.5/eclim_2.2.5.jar
# java  -Dvim.skip=true -Declipse.home=/home/software/eclipse -jar eclim_2.2.5.jar install
wget http://apt.typesafe.com/repo-deb-build-0002.deb
dpkg -i repo-deb-build-0002.deb
rm repo-deb-build-0002.deb -fr
apt-get update
apt-get install typesafe-stack curl
wget http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt//0.12.3/sbt.deb
dpkg -i sbt.deb
rm sbt.deb -fr

# wget http://www.scala-lang.org/downloads/distrib/files/scala-2.10.1.tgz
# tar -xvf scala-2.10.1.tgz
# mv scala-2.10.1 /home/lib/
sudo ln -s /home/lib/scala-2.10.1/bin/scala /usr/local/bin/scala
sudo ln -s /home/lib/scala-2.10.1/bin/scalac /usr/local/bin/scalac
sudo ln -s /home/lib/scala-2.10.1/bin/fsc /usr/local/bin/fsc
sudo ln -s /home/lib/scala-2.10.1/bin/sbaz /usr/local/bin/sbaz
sudo ln -s /home/lib/scala-2.10.1/bin/sbaz-setup /usr/local/bin/sbaz-setup
sudo ln -s /home/lib/scala-2.10.1/bin/scaladoc /usr/local/bin/scaladoc
sudo ln -s /home/lib/scala-2.10.1/bin/scalap /usr/local/bin/scalap

echo 'view this http://zengrong.net/post/1024.htm ' 
