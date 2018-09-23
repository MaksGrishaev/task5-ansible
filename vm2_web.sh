#!/bin/bash

apt-get update
#apt-get install openssh-server -y

#sudo useradd -p ansible -G sudo -m -s /bin/bash ansible
#mkdir /home/ansible/.ssh/
cp /mnt/id_rsa.pub /root/.ssh/authorized_keys
#chown -R ansible:ansible /home/ansible/.ssh/

