## Continuous Delivery environment with Docker on Ubuntu 14.04


#### Pre-requisites:
  * [Oracle VM VirtualBox](http://www.virtualbox.org)
  * [Vagrant](http://www.vagrantup.com) v1.8.1
  * [Packer](http://www.packer.io) v0.9
  * [Ansible](http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu) v2.0
 

#### Build instructions
**Vagrant**

 TODO
 
**Directly on Ubuntu**

  ```
    $ ansible-galaxy install -r requirements.yml
    $ echo '[local]\nlocalhost\n' > /etc/ansible/hosts
  ```
