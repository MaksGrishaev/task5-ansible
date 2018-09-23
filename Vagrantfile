# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "vm1_db" do |vm1_db|
    vm1_db.vm.box = "ubuntu/trusty32"
    vm1_db.vm.network "private_network", ip: "10.100.100.10"
    vm1_db.vm.hostname = "db"
    vm1_db.vm.synced_folder "share/vm1_db", "/mnt/"
    vm1_db.vm.provision "shell", path: "vm1_db.sh"
  end

  config.vm.define "vm2_web" do |vm2_web|
    vm2_web.vm.box = "ubuntu/trusty32"
    vm2_web.vm.network "private_network", ip: "10.100.100.11"
    vm2_web.vm.hostname = "web"
    vm2_web.vm.synced_folder "share/vm2_web", "/mnt/"
    vm2_web.vm.provision "shell", path: "vm2_web.sh"
  end

  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "ubuntu/trusty32"
    ansible.vm.hostname = "ansible"
    ansible.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = "2"
    end
    ansible.vm.network "private_network", ip: "10.100.100.100"
    ansible.vm.synced_folder "share/ansible_srv", "/mnt/"
    ansible.vm.provision "shell", path: "ansible.sh"
  end

end
