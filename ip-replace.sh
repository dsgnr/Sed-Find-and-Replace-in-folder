#!/bin/bash
while IFS=' ' read -r old_ip new_ip
do
IFS=", "

grep -rl "$old_ip" /test | xargs sed -i "s/$old_ip/$new_ip/g"

done < servers.txt
