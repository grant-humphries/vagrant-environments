#!/usr/bin/env bash

set -e
export DEBIAN_FRONTEND='noninteractive'

# adding the ubuntugis repo to apt provides across to additional and
# more up-to-date gis libraries
add-apt-repository ppa:ubuntugis/ppa
apt-get update

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
