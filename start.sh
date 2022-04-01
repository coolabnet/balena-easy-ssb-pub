#!/bin/bash

NAME=$(wget -qO- "$BALENA_SUPERVISOR_ADDRESS/v1/device/host-config?apikey=$BALENA_SUPERVISOR_API_KEY"| jq -r .network.hostname)
echo $NAME
HOST=$NAME.local npm start
