# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu13-lxc"
  config.vm.box_url = "http://dl.dropbox.com/u/13510779/lxc-raring-amd64-2013-07-12.box"

  config.vm.provision "shell", path: "provision.sh"
end
