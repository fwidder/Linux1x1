#/bin/bash
ssh-keygen -b 4096 -t rsa -f ~/.ssh/id_rsa -q -N ""
mkdir ~/git
cd ~/git
git clone https://github.com/fwidder/Linux1x1.git
cd Linux1x1
git remote rm origin
cd vagrant
vagrant up
