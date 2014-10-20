
### Ubuntu 14.04.1 LTS with Docker supporting VirtualBox provider

This repository contains the *Vagrantfile* and *associated files* for setting up a box with a clean Ubuntu 14.04.1 LTS 64-bit installation for [Vagrant](https://www.vagrantup.com/). It currently supports [VirtualBox](https://www.virtualbox.org/) provider.

The prebuilt box with Docker version 1.3.0 is available on [Vagrant Cloud](https://vagrantcloud.com/xancandal/boxes/trusty64-docker-vbox).

```
vagrant init xancandal/trusty64-docker-vbox
```

If you build it yourself, it´ll differ from the one provided on Vagrant Cloud in the way that you also automatically install the latest version of [Docker](https://www.docker.io/) available.

#### Box customization:

* Vagrantfile addition to configure 0.5 Gig per CPU.
* Host CPU execution cap of 50%.ﬂ
* Default VRAM 256 MB.
* Create a private network.
* Enable automatic box update checking.
* Forward the output of graphical programs using X11 to the host machine.
* [Enable memory and swap accounting](http://docs.docker.io/en/latest/installation/ubuntulinux/#memory-and-swap-accounting).
* Check the correct additions version when booting the machine. Required:
`vagrant plugin install vagrant-vbguest`

You can login with username `vagrant` and password `vagrant`. This user has sudo privileges. The root user also has password `vagrant`.




