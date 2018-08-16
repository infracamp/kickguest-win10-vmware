#!/bin/bash

#
# This message is shown on login
#

if [ ! -e /mnt/id_rsa.pub ]
then
    echo "You don't have a ssh key. We will create some for you..."
fi;


IPADDR=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')

echo ""
echo "infracamp's KickGuest VMware :: happy containers"
echo "------------------------------------------------"
echo ""
echo "SSH login.........: ssh user@$IPADDR"
echo "Browser...........: http://$IPADDR"
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