apt-get install libnss3-tools -y
modutil -changepw "NSS Certificate DB" -dbdir $HOME/.pki/nssdb
certutil -d sql:$HOME/.pki/nssdb -A -t TC -n "goagent" -i  /home/software/goagent/local/CA.crt
