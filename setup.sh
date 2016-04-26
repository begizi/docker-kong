#!/bin/sh

sed -i "s/kongDatabase/$KONG_DATABASE_PORT_5432_TCP_ADDR/g" /etc/kong/kong.yml

# Setting up the proper database
if [ -n "$DATABASE" ]; then
  echo -e '\ndatabase: "'$DATABASE'"' >> /etc/kong/kong.yml
fi
