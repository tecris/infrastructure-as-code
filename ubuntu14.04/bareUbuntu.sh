#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "One argument required, the user to run docker commands"
    exit 0;
fi


# install ansible
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# install ansible roles
sudo ansible-galaxy install -r requirements.yml

# run ansible playbook
cd ansible && sudo ansible-playbook -e "username=$1" -i hosts playbook.yml -c local
