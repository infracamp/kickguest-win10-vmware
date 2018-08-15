#!/bin/bash




sudo vmhgfs-fuse .host:$(vmware-hgfsclient) /mnt -o allow_other

