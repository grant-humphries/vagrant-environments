#!/usr/bin/env bash

#add-apt-repository ppa:ubuntugis/ppa
#apt-get update

apt-get install python-dev python-pip virtualenv -y
# apt-get install gdal-bin -y
# apt-get install geos -y

pip install zc.buildout
