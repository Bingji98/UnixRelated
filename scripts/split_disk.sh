#!/bin/bash
export disk_name="/dev/nvme0n1"
export mount_dir="/data01"
export user_name="xxx"
parted -s $disk_name mklabel gpt
echo y | mkfs.ext4 $disk_name
mkdir $mount_dir
mount $disk_name $mount_dir
echo '/dev/nvme0n1 /data01 ext4 defaults 0 0' >> /etc/fstab
mkdir $mount_dir/$user_name
