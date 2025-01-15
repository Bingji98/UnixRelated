#!/usr/bin/bash

cat /root/ip_list | while read hip
do
    echo $hip
    ssh root@$hip "docker commit \$(docker ps | grep 'container_name' | awk 'FNR == 1 {print \$1}') ongoing_container_name:vx.x" &

done
wait
echo "==end sync folder=="
