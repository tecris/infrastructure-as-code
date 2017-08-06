#!/bin/bash


# ubuntu 16.04 xenial
export DOCKER_IP=`ip -o -4 addr list wlp3s0 | awk '{print $4}' | cut -d/ -f1`
# export DOCKER_IP=`ip -o -4 addr list enp0s3 | awk '{print $4}' | cut -d/ -f1`

# ubuntu 14.04
# export DOCKER_IP=`ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1`

docker-compose up -d jenkins
