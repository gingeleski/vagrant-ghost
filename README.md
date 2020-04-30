# vagrant-ghost

This is an Ubuntu Vagrant box for Ghost theme development.

Existing solutions were prebuilt with old versions of Ghost and/or dependencies. :sob:

This one grabs the latest of everything when you `vagrant up`. :rainbow:

## Setup

```
git clone https://github.com/gingeleski/vagrant-ghost.git
cd vagrant-ghost
vagrant up
vagrant ssh
```

At the bottom of the console output you'll also see what the host-accessible URL of your new Ghost instance should be.

So, from the following...

```
    default: Ghost was installed successfully! To complete setup of your publication, visit:
    default:
    default:     http://localhost:2368/ghost/
    default: - Inspecting operating system
    default: Found a development config but not a production config, running in development mode instead
    default: Successfully set 'server.host' to '0.0.0.0'
    default: - Inspecting operating system
    default: Found a development config but not a production config, running in development mode instead
    default: Successfully set 'url' to 'http://192.168.1.105:2368/'
    default: - Inspecting operating system
    default: - Restarting Ghost
    default: ✔ Restarting Ghost
```

We can discern that Ghost is accessible via `http://192.168.1.105:2368` on your host.
