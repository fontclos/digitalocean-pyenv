#! /bin/bash

# install pyenv
curl https://pyenv.run | bash

# add pyenv stuff to bashrc
echo "export PATH=\"/home/fontclos/.pyenv/bin:\$PATH\"
eval \"\$(pyenv init -)\"
eval \"\$(pyenv virtualenv-init -)\"" >> /home/fontclos/.bashrc

source /home/fontclos/.bashrc

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
