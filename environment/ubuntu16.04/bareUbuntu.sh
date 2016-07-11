#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "One argument required, the user to run docker commands"
    exit 0;
fi


# check available versions for ansible
# apt-cache policy ansible

# install ansible
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible=2.1.0.0-1ppa~xenial

# install ansible roles
sudo ansible-galaxy install -r requirements.yml

# run ansible playbook
sudo ansible-playbook -e "username=$1" -i ansible/hosts ansible/playbook.yml -c local
