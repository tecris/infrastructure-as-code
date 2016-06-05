#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "One argument required, the user to run docker commands"
    exit 0;
fi


# ubuntu16.04 (xenial)
sudo apt-get install -y ansible=2.0.0.2-2

sudo ansible-galaxy install -r requirements.yml

cd ansible && sudo ansible-playbook -e "username=$1" -i hosts playbook.yml -c local --skip-tags "only-on-docker"
