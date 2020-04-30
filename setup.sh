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
su -c "ghost install local" vagrant

# If a directory "content/" exists then we'll swap the new Ghost installation's with it
if [ -d "/vagrant/content" ] 
then
    su -c "ghost stop" vagrant
    rm -r /home/vagrant/content
    cp -r /vagrant/content /home/vagrant/content
fi

# Now make sure Ghost will be served to loopback and have a host-routable address
su -c "ghost config server.host 0.0.0.0" vagrant
su -c "ghost config url \"http://$(ip -4 addr show eth1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'):2368/\"" vagrant
su -c "ghost restart" vagrant
