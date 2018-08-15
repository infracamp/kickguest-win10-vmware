#!/bin/bash

## Error if something goes wrong
set -e

INSTALL_DIR=/tmp/kickguest-win10-vmware/provision

## We want empty passwords for ssh:
sudo echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config
sudo echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

## Install the packages
sudo apt-get install -y docker.io curl git pwgen whois open-vm-tools

## Allow normal user to access docker command
sudo gpasswd -a $USER docker

## Remove the default password from user (login without passwd)
sudo passwd -d user

## Copy files
sudo rm /etc/update-motd.d/*
sudo cp -R $INSTALL_DIR/* /etc/
sudo chmod -x /etc/rc.local
sudo chmod -x /etc/update-motd.d/*



echo "DONE!"


