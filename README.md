# vagrant-ghost

This is an Ubuntu Vagrant box for Ghost theme development.

Existing solutions were prebuilt with old versions of Ghost and/or dependencies :sob:

This one grabs the latest of everything when you `vagrant up` :rainbow:

## Setup

```
git clone https://github.com/gingeleski/vagrant-ghost.git
cd vagrant-ghost
vagrant up
vagrant ssh
cd /var/www/ghost
npm start
```

The contents of your Ghost installation will be accessible in the `ghost` directory.
