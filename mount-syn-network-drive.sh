#!/bin/bash
# @author Ryan McIntyre
# sources
# https://www.synology.com/en-us/support/tutorials/566
# http://askubuntu.com/questions/525243/why-do-i-get-wrong-fs-type-bad-option-bad-superblock-error
## need nfs-common package

# my settings for syn nfs connection:
#192.168.1.*
#read/write
#no mapping
#sys
#enable async [x]

private_config="$HOME/mount-network-drive-private.cfg"

# source the private confit file if exists:
if [ -f "$private_config" ]
then
  source "$private_config"
else
  echo >&2 "# Could not source private config"
  exit 1
fi

mkdir -p /mnt/syn
mkdir -p /mnt/syn_video

#sudo mount -t cifs //192.168.1.16//Volume_1  /mnt/nas -o guest,uid=1000,iocharset=utf8

# mount with NFS:

#sudo mount $address:/volume1/files /mnt/syn
# not working:
#sudo mount $address:/volume1 /mnt/syn -o rw

# was working except mounting as specific users:
#sudo mount $address:/volume1/files /mnt/syn -o rw
#sudo mount $address:/volume1/video /mnt/syn_video -o rw

# mount as specific users
sudo mount -t cifs -o "username=$username" "//$address/files" /mnt/syn
sudo mount -t cifs -o username=$username "//$address/video" /mnt/syn_video

