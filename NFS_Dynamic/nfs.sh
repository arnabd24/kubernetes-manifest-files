#!/bin/bash
yum install nfs-utils -y
chown nobody: /nfsshare
echo "/nfsshare *(rw,sync,no_subtree_check,no_root_squash,no_all_squash,insecure)" > /etc/exports
exportfs -rav
systemctl start nfs
systemctl enable nfs
showmount -e 192.168.40.128
