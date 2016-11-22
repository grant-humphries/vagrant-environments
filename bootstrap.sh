#!/usr/bin/env bash

# stop on error and suppress any user prompts
set -e
export DEBIAN_FRONTEND=noninteractive

# adding the ubunutugis repo to apt provides across to additional and
# more up-to-date gis libraries
add-apt-repository ppa:ubuntugis/ppa
apt-get update
apt-get upgrade

# python tools
apt-get install -y \
    python-dev \
    python-pip \
    virtualenv

# geospatial c-libraries **NOTE**: there are environment variables in my
# .bashrc (part of the dotfiles repo below) that help setuptools, pip,
# etc. to find these when installing python packages
apt-get install -y \
    libgdal-dev \
    libgeos-dev \
    libproj-dev \
    libspatialindex-dev \
    libxml2-dev \
    libxslt1-dev

# install python packages that are needed on system python
pip install --upgrade pip
pip install \
    zc.buildout \
    bpython

# get dotfiles from git repo and deploy them (this set of commands
# needs to be carried out as the 'user' specified below so permissions
# are correct)
user='ubuntu'
user_home="/home/${user}"
cd "${user_home}"

su -c 'git clone https://github.com/grant-humphries/dotfiles.git' "${user}"
su -c "${user_home}/dotfiles/scripts/symlink.sh" "${user}"
