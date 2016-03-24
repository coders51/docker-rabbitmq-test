#!/bin/sh

( sleep 5 ; \
# Create vhosts
# rabbitmqctl add_vhost <vhostname>
rabbitmqctl add_vhost ci_test ; \

# Set vhost permissions
# rabbitmqctl set_permissions -p <vhostname> <username> ".*" ".*" ".*"
rabbitmqctl set_permissions -p ci_test guest ".*" ".*" ".*" ; \
) &
rabbitmq-server $@
