#!/bin/bash
set -e

apt-get install git-core python-pip xmlstarlet emacs24 emacs24-el slime mc -y emacs-goodies-el ack
npm install coffeelint -g


cat >> /etc/bash.bashrc <<EOF
alias ec='emacsclient -nw -a ""'
alias ecx='emacsclient -c -a ""'
EOF


wget https://github.com/pinard/Pymacs/tarball/v0.25
tar -xvf v0.25 && rm v0.25 -fr
cd pinard-Pymacs-5989046 && make && python setup.py install
cd .. && rm -fr pinard-Pymacs-5989046

wget https://pypi.python.org/packages/source/r/rope/rope-0.9.4.tar.gz
tar -xvf rope-0.9.4.tar.gz && rm rope-0.9.4.tar.gz
cd rope-0.9.4 && python setup.py install
cd ..

wget https://pypi.python.org/packages/source/r/ropemode/ropemode-0.2.tar.gz
tar -xvf ropemode-0.2.tar.gz && rm ropemode-0.2.tar.gz
cd ropemode-0.2 && python setup.py install
cd .. && rm rope* -fr

pip install ropemacs


# add-apt-repository ppa:cassou/emacs
# apt-get install emacs24 emacs24-el emacs24-common-non-dfsg

# git clone https://github.com/bobzhangwz/emacs-config.git ~/.emacs.d
