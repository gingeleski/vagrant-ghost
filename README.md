# vagrant-ghost

This is a development box for Ghost.

It's Ubuntu 16.04, it installs the latest version of Ghost, and when it does you can access everything inside via `./ghost`.

I built it with the intention of developing themes, because existing solutions were prebuilt with old versions of Ghost or its prerequisites.

This one grabs the latest of everything when you `vagrant up`.

Look how easy the setup is...

## Setup

```
git clone https://github.com/gingeleski/vagrant-ghost.git
cd vagrant-ghost
vagrant up
vagrant ssh
cd /var/www/ghost
npm start
```