#!/bin/bash

sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible software-properties-common -y

cp /mnt/id_rsa* /root/.ssh/
cp /mnt/hosts /etc/ansible/hosts
cp -r /mnt/playbooks /etc/ansible/playbooks

echo "10.100.100.10 vm1_db" >> /etc/hosts
echo "10.100.100.11 vm2_web" >> /etc/hosts
echo "18.188.69.210 vm2_aws_:qweb" >> /etc/hosts
