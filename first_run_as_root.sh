#! /bin/bash

# update system
apt-get update
apt-get -y upgrade 

# install pyenv dependencies
# https://github.com/pyenv/pyenv/wiki/Common-build-problems
apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl

# make new user
# bash create_new_user.sh
curl https://raw.githubusercontent.com/fontclos/digitalocean-pyenv/master/create_new_user.sh
