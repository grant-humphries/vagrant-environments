#!/usr/bin/env bash

set -e

# default permissions on /tmp /var are limited to root
sudo chmod 1777 /tmp
sudo chmod 755 /var

# update things
apt-get update
apt-get upgrade
