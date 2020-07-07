#!/bin/bash
cd /mnt/hgfs
folder=$(vmware-hgfsclient)
mkdir "$folder"
sudo vmhgfs-fuse .host:"$folder" "/mnt/hgfs/$folder" -o allow_other -o uid+1000
