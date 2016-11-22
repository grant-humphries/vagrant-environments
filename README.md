## vagrant-ubuntu-gis
This repo contains files that are drawn upon by a couple of simple vagrant commands to generate an ubuntu virtual machine with the needed libraries to do open source gis development.  The box should be easy to create and use on any major platform.

#### instructions
1.  Install virtualbox from [here](https://www.virtualbox.org/wiki/Downloads)
2.  Install vagrant from [here](https://www.vagrantup.com/downloads.html)
3.  `cd` into the home directory of your cloned copy of this repo
4. `vagrant up`
5. `vagrant ssh`

After following these steps you will be logged into the virtual machine and ready to begin development.

#### Resources
* vagrant getting started [guide](https://www.vagrantup.com/docs/getting-starte)
* [bugfix](http://stackoverflow.com/questions/40477731) for vagrant 1.8.7 on macOS Sierra
* [bugfix](http://stackoverflow.com/questions/40531738) for virtualbox 5.1.8 on all platforms