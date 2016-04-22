## Continuous Delivery environment with Docker on Ubuntu 14.04


#### Pre-requisites:
  * [Oracle VM VirtualBox](http://www.virtualbox.org)
  * [Vagrant](http://www.vagrantup.com) v1.8.1
  * [Packer](http://www.packer.io) v0.9
  * [Ansible](http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu) v2.0
 

#### Build instructions
```
$ git clone https://github.com/shiguredo/packer-templates.git (-r 36b5694514efd858a1a7a4e3c90112e8cb8a61ab)
$ cd packer-templates/ubuntu-14.04
$ packer build -only=virtualbox-iso template.json
$ vagrant box add ubuntu-14-04-x64-virtualbox ubuntu-14-04-x64-virtualbox.box
$ vagrant up
$ vagrant halt
$ vagrant package --output ubuntu-14-04-x64-virtualbox-cd.box
$ vagrant box add ubuntu-14-04-x64-virtualbox-cd ubuntu-14-04-x64-virtualbox-cd.box
```
