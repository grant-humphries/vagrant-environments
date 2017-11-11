#!/usr/bin/env bash

set -e

apt-get upgrade
source ../bootstrap-scripts/install_dotfiles.sh 'ubuntu'
