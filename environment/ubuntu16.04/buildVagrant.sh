#!/bin/bash

D=`date +%Y-%m-%d`
DAY=$(date -d "$D" '+%d')
MONTH=$(date -d "$D" '+%m')
YEAR=$(date -d "$D" '+%Y')


BOX_NAME=ubuntu-16.04-server-amd64-cd-${YEAR}.${MONTH}.${DAY}

echo Building $BOX_NAME

# provision packages
vagrant up

# power off vm
vagrant halt

# package box
vagrant package --output $BOX_NAME.box

# add box to vagrant repository
vagrant box add $BOX_NAME $BOX_NAME.box 
