#!/bin/bash

HOST_NAME=`hostname` docker-compose -f docker-compose_telegraf.yml up -d
