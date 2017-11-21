# VAGRANT-GHOST SETUP

# Make sure we're in personal folder, then download Ghost
cd ~
wget https://ghost.org/zip/ghost-latest.zip

# Make sure existing packages are up-to-date before we install new ones
sudo apt-get --assume-yes update

# Install unzip then unzip Ghost
sudo apt-get --assume-yes install unzip
sudo unzip -d /var/www/ghost ghost-latest.zip

# Install NodeJS, npm
#sudo apt-get --assume-yes install nodejs
#sudo ln -s `which nodejs` /usr/bin/node
#sudo apt-get --assume-yes install npm
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install Ghost modules via npm
cd /var/www/ghost
sudo npm install --no-bin-links

# Use example Ghost config as a starting point
sudo cp config.example.js config.js
