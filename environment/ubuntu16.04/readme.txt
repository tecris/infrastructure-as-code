https://app.vagrantup.com/tecris/boxes/ubuntu1604-cd
https://atlas.hashicorp.com/help/vagrant/boxes/create

curl 'https://app.vagrantup.com/api/v1/box/tecris/ubuntu1604-cd/version/17.08.06/provider/virtualbox/upload?access_token=token'

curl -X PUT --upload-file /home/tecris/workspace/dev-environment-linux/base/ubuntu-16.04-desktop-amd64-cd-base-2017.08.06.box \
"https://archivist.vagrantup.com"
