## Continuous Delivery environment with Docker on Ubuntu 14.04


### Bare Ubuntu
 `$ ./bareUbuntu.sh`


### Vagrant###
**Pre-requisites:**
  * [Oracle VM VirtualBox](http://www.virtualbox.org)
  * [Vagrant](http://www.vagrantup.com) v1.8.4
  * [Ansible](http://docs.ansible.com/intro_installation.html#latest-releases-via-apt-ubuntu) v2.0

  * Create VirtualBox vagrant managed box from ubuntu iso image

**Build instructions**
 * Customize raw Ubuntu image ([add](ansible/playbook.yml) desired packages: docker, docker-compose, etc)

  ```
  $ vagrant up
  $ vagrant package --output ubuntu-16-04-x64-virtualbox-cd-1.0.2.box
  $ vagrant box add ubuntu-16-04-x64-virtualbox-cd-1.0.2 ubuntu-16-04-x64-virtualbox-cd-1.0.2.box
  ```
 * Run image

  ```
  $ cd demo
  $ vagrant up
  ```
