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
curl https://raw.githubusercontent.com/fontclos/digitalocean-pyenv/master/create_new_user.sh?token=AJ99IZAQns_J-oPIUalmE1w6YA_eboF8ks5cVzlcwA%3D%3D | bash

# install pyenv
curl https://pyenv.run | bash

# add pyenv stuff to bashrc
echo "export PATH=\"/home/fontclos/.pyenv/bin:\$PATH\"
eval \"\$(pyenv init -)\"
eval \"\$(pyenv virtualenv-init -)\"" >> /home/fontclos/.bashrc

# switch to new user
sudo -u fontclos bash << EOF

# install a few python versions
pyenv install 3.7.0
#pyenv install 3.6.0
#pyenv install 3.5.0
#pyenv install 3.4.0
#pyenv install 3.3.0
#pyenv install 3.2
#pyenv install 3.1
#pyenv install 2.7
#pyenv install 2.6.6
#pyenv install 2.5
#pyenv install 2.4
#pyenv install 2.3.7
#pyenv install 2.2.3
pyenv install 2.1.3

EOF