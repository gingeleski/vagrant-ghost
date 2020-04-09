# VAGRANT-GHOST SETUP

# Make sure existing packages are up-to-date before we install new ones
sudo apt-get --assume-yes update
sudo apt-get --assume-yes upgrade

# Install NodeJS, npm
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

# Get the Ghost package via npm
npm install ghost-cli@latest -g

# For the actual Ghost install step we cannot be root - permit 'vagrant' user
sudo chown vagrant:vagrant /root
sudo chown vagrant:vagrant /ghost
su -c "ghost install local" vagrant
