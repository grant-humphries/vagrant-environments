#!/usr/bin/env bash

# fetch dotfiles from git repo and install them (this set of commands
# needs to be carried out as the `user` for which they are to be
# installed, the user should be passed as a parameter to this script)
user="${1}"
projects_dir="/home/${user}/projects"
mkdir -p "${projects_dir}"
cd "${projects_dir}"

su -c 'git clone https://github.com/grant-humphries/dotfiles.git' "${user}"
su -c "./dotfiles/scripts/symlink.sh" "${user}"
