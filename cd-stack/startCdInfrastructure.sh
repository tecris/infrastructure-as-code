#!/bin/bash

sudo mkdir -p /var/docker_volumes/nexus-data && sudo chown -R 200 /var/docker_volumes/nexus-data

export DOCKER_IP=`ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1`

 docker-compose -f continuous-delivery-light.yml up -d
