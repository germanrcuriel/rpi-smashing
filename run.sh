#!/bin/bash

bundle install

if [[ ! -z "$PORT" ]]; then
  PORT_ARG="-p $PORT"
fi

# Start smashing
echo -e "Starting ..."
exec smashing start $PORT_ARG
