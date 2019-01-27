#! /bin/bash

# update system
apt-get update
apt-get -y upgrade 

# create new user, etc
curl -L https://raw.githubusercontent.com/do-community/automated-setups/master/Ubuntu-18.04/initial_server_setup.sh | bash

# install pyenv dependencies
# https://github.com/pyenv/pyenv/wiki/Common-build-problems
apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl

# install pyenv
