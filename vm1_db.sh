#!/bin/bash

#echo "mysql-server mysql-server/root_password password r00t" | sudo debconf-set-selections
#echo "mysql-server mysql-server/root_password_again password r00t" | sudo debconf-set-selections
#apt-get install -y mysql-server
#mysql -uroot -p'r00t' -e "CREATE USER 'wordpress'@'%' IDENTIFIED BY '123321'; CREATE DATABASE IF NOT EXISTS wordpress; GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';"
#sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf
#service mysql restart
sudo apt-get update
#sudo useradd -p ansible -G sudo -m -s /bin/bash ansible
#mkdir /home/ansible/.ssh/
cp /mnt/id_rsa.pub /root/.ssh/authorized_keys
#chown -R ansible:ansible /home/ansible/.ssh/

