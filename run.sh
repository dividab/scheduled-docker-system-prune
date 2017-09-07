#!/bin/bash

if [ ! -e "/var/run/docker.sock" ]; then
    echo "=> Cannot find docker socket(/var/run/docker.sock), please check the command!"
    exit 1
fi

if [ "${DELAY_TIME}" == "**None**" ]; then
    echo "=> DELAY_TIME not defined, use the default value."
    DELAY_TIME=1800
fi

while [ 1 ]
do
echo "=> Waiting ${DELAY_TIME} seconds before cleaning"
    sleep ${DELAY_TIME} & wait
    docker system prune --all --force
done