#/bin/bash
apt update
apt upgrade --yes
apt install --yes nano mc git-all vagrant python software-properties-common links2 htop tree net-tools linux-headers-generic openssh-server
service ssh start
apt-add-repository ppa:ansible/ansible
add-apt-repository multiverse
apt update
apt install --yes ansible ansible-lint virtualbox virtualbox-dkms virtualbox-ext-pack
dpkg-reconfigure virtualbox-dkms
dpkg-reconfigure virtualbox
modprobe vboxdrv
modprobe vboxnetadp
modprobe vboxnetflt
