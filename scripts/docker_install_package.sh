#!/usr/bin/bash

cat /root/ip_list | while read hip
do
    echo $hip
    ssh root@$hip "docker exec \$(docker ps | grep 'container_name' | awk 'FNR == 1 {print \$1}') bash -c 'pip install xxxxxx.whl'" &
done
wait
echo "==end sync folder=="
