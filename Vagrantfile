# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "bento/ubuntu-19.10"

  config.vm.network "public_network"

  config.vm.provision "shell", path: "setup.sh"

end
