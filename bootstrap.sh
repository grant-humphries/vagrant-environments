#!/usr/bin/env bash
set -e

# adding the ubunutugis repo to apt provides across to additional and
# more up-to-date gis libraries
add-apt-repository ppa:ubuntugis/ppa
apt-get update

# python tools
apt-get install -y \
    python-dev \
    python-pip \
    virtualenv

# geospatial c-libraries
apt-get install -y \
    libgdal-dev \
    libgeos-dev \
    libproj-dev \
    libspatialindex-dev

# environment variables that will help python packages find the c/c++
# libraries that they rely upon
# http://gis.stackexchange.com/questions/28966/
export C_INCLUDE_PATH='/usr/include/gdal'
export CPLUS_INCLUDE_PATH='/usr/include/gdal'
export PROJ_DIR='/usr/share/proj'

# install python packages that are needed on system python
pip install --upgrade pip
pip install \
    zc.buildout \
    bpython

# get dotfiles from git repo and deploy them
git clone https://github.com/grant-humphries/dotfiles.git
./dotfiles/scripts/symlink.sh
source "${HOME}/.bashrc"
