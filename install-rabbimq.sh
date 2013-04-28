#!/bin/bash

set -e
cat >> /etc/apt/sources.list <<EOF
deb http://www.rabbitmq.com/debian/ testing main
EOF

wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
apt-key add rabbitmq-signing-key-public.asc
rm rabbitmq-signing-key-public.asc
apt-get update
apt-get install rabbitmq-server -y

rabbitmqctl add_user worker dreams
rabbitmqctl delete_user guest
rabbitmqctl add_vhost datahost
rabbitmqctl add_vhost mediahost
rabbitmqctl set_permissions -p datahost worker ".*" ".*" ".*"
rabbitmqctl set_permissions -p mediahost worker ".*" ".*" ".*"

read -a PASS -p "Enter root password: "
rabbitmqctl add_user root $PASS
rabbitmqctl set_user_tags root administrator
