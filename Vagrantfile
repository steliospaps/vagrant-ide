# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/zesty32"

  config.vm.provider "virtualbox" do |v|
    v.memory = 3072
    v.cpus = 2
    v.gui = true
  end
  config.vm.network "private_network", ip: "10.0.1.101"

  config.vm.synced_folder "../", "/projects"

  config.vm.provision "shell", path: "provision.sh"
end
