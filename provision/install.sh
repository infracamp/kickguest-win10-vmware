#!/bin/bash


sudo echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config
sudo echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
sudo apt-get install docker.io curl git pwgen whois open-vm-tools
sudo gpasswd -a $USER docker

sudo cp /tmp/kickguest-win10-vmware/provision/rc.local /etc/rc.local
sudo chmod 755 /etc/rc.local





