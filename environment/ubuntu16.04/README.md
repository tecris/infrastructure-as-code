## Continuous Delivery environment

 - What is actually "Continuous Delivery Environment" ? This is the environment that will host the continuous delivery stack.
 - What is "continuous delivery stack" ? Various components responsible for running the continuous delivery show. Main components implementing continuous delivery:
   - jenkins
   - docker
   - docker compose
   - nexus. 

### Configure docker to use company proxy (HTTP PROXY)
 - https://docs.docker.com/engine/admin/systemd/#/http-proxy

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
