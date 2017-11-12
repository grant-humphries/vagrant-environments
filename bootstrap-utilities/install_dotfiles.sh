#!/usr/bin/env bash

set -e

dotfiles_dir="${HOME}/projects/dotfiles"
dotfiles_url='https://github.com/grant-humphries/dotfiles.git'

# fetch dotfiles from git repo and install them, note that these
# commands need to be run as the ssh user which is done by setting
# privileged to false when when launching the provisioning script in
# the Vagrantfile
mkdir -p ${dotfiles_dir}
git clone ${dotfiles_url} ${dotfiles_dir}
${dotfiles_dir}/scripts/symlink.sh
