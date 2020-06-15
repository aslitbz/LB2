# -*- mode: ruby -*-
# vi: set ft=ruby :
#####################################
# Modul: 300
# LB 2
# Asli Kaya
# Version 1.1
####################################i

 Vagrant.configure("2") do |config|
	config.vm.define "LB2website1" do |web1|
		web1.vm.box = "ubuntu/xenial64"
		web1.vm.hostname = "LB2website1"
		web1.vm.network "private_network", ip: "192.168.55.100"
		web1.vm.network "forwarded_port", guest:80, host:8080, auto_correct: true
		web1.vm.provider "virtualbox" do |vb|
			vb.memory = "1024"
		end
                web1.vm.synced_folder ".", "/var/www/html"
		web1.vm.provision "shell", path: "LB2_web.sh"
  end

  	config.vm.define "LB2website2" do |web2|
		web2.vm.box = "ubuntu/xenial64"
		web2.vm.hostname = "LB2website2"
		web2.vm.network "private_network", ip: "192.168.55.101"
		web2.vm.network "forwarded_port", guest:80, host:8081, auto_correct: true
		web2.vm.provider "virtualbox" do |vb|
			vb.memory = "1024"
		end
                web2.vm.synced_folder ".", "/var/www/html"
		web2.vm.provision "shell", path: "LB2_web.sh"
  end

	config.vm.define "LB2reverseproxy" do |repx|
		repx.vm.box = "ubuntu/xenial64"
		repx.vm.hostname = "LB2reverseproxy"
		repx.vm.network "private_network", ip: "192.168.55.102"
		repx.vm.network "forwarded_port", guest:80, host:8000, auto_correct: true
		repx.vm.provider "virtualbox"
		repx.vm.provider "virtualbox" do |vb|
			vb.memory = "1024"
		end
                repx.vm.synced_folder ".", "/vagrant"
		repx.vm.provision "shell", path: "LB2_proxy.sh"
  end
end

