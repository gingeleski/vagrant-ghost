# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "bento/ubuntu-19.10"

  config.vm.network "forwarded_port", guest: 2368, host: 8080

  config.vm.synced_folder "./ghost", "/ghost"

  config.vm.provision "shell", path: "setup.sh"

end
