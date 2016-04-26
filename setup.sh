#!/bin/sh

sed -i "s/kongDatabase/$KONG_DATABASE_ENV_DOCKERCLOUD_NODE_HOSTNAME/g" /etc/kong/kong.yml

# Setting up the proper database
if [ -n "$DATABASE" ]; then
  echo -e '\ndatabase: "'$DATABASE'"' >> /etc/kong/kong.yml
fi
