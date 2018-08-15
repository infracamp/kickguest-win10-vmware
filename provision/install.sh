#!/bin/bash

## Error if something goes wrong
set -e

INSTALL_DIR=/tmp/kickguest-win10-vmware/provision

## We want empty passwords for ssh:
echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

## Install the packages
apt-get install -y docker.io curl git pwgen whois open-vm-tools

## Allow normal user to access docker command
 gpasswd -a user docker

## Remove the default password from user (login without passwd)
 passwd -d user

## Copy files
rm -f /etc/update-motd.d/*
cp -R $INSTALL_DIR/* /etc/
chmod +x /etc/rc.local
chmod +x /etc/update-motd.d/*



echo "DONE!"


