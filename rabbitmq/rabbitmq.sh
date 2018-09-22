#!/bin/sh

# Create Default RabbitMQ setup
( sleep 10 ; \

# Create users
# rabbitmqctl add_user <username> <password>
rabbitmqctl add_user rabbitmq rabbitmq ; \

# Set user rights
# rabbitmqctl set_user_tags <username> <tag>
rabbitmqctl set_user_tags rabbitmq administrator ; \

# Create vhosts
# rabbitmqctl add_vhost <vhostname>
rabbitmqctl add_vhost / ; \

# Declare an exchange, queue, binding
rabbitmqadmin declare exchange name=jenkins type=fanout
rabbitmqadmin declare queue --vhost=/ name=jenkins durable=true
rabbitmqadmin --vhost="/" declare binding source="jenkins" destination_type="queue" destination="jenkins" routing_key="some_routing_key"

rabbitmqadmin publish exchange=jenkins routing_key=test payload="hello, world"

# Set vhost permissions
# rabbitmqctl set_permissions -p <vhostname> <username> ".*" ".*" ".*"
rabbitmqctl set_permissions -p / rabbitmq ".*" ".*" ".*" ; \
) &
rabbitmq-server $@
