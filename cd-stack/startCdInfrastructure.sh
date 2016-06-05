#!/bin/bash


export DOCKER_IP=`ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1`

docker-compose up -d
