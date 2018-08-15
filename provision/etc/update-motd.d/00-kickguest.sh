#!/bin/bash

#
# This message is shown on login
#

if [ ! -e /mnt/id_rsa.pub ]
then
    echo "You don't have a ssh key. We will create some for you..."
fi;


echo ""
echo "infracamp's KickGuest VMware :: happy containers"
echo "------------------------------------------------"
echo ""
echo "SSH login.........: ssh user@192.168.48.128"
echo "Browser...........: http://192.168.48.128"
echo ""
echo "Mounted folders...: /mnt"
echo ""



if [ -e /mnt/id_rsa.pub ]
then
    echo "Your SSH Public Key: $(cat /mnt/id_rsa.pub)"
fi;

echo "Run docker-commands without sudo!"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "Questions? visit http://infracamp.org"
echo ""