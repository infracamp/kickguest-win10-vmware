#!/bin/bash


sudo echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config
sudo echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
sudo apt-get install docker.io curl git pwgen whois open-vm-tools

sudo gpasswd -a $USER docker