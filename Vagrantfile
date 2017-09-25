# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|

  config.vm.box = "geerlingguy/centos7"


# Port Forwarding
  
config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"


# Install docker
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant", args: "-t nginx/docker"
    d.run "nginx/docker", args: "-p 80:80"

  end


end
