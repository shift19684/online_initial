#!/bin/bash

sleep 30

limit="1816899100"
limit="1816899101"

DIR="/home/sudox/lim/"
FILENAME="set_lim_.txt"
FILEPATH="${DIR}${FILENAME}"

if [ -f "$FILEPATH" ]; then
    #echo "Exist"
    IFS= read -r limit < "$FILEPATH"
    #echo "limit:$limit"
else
    #echo "Does not exist"
    sudo /home/sudox/bangs/initial_.sh
fi


int_date=$(date -d "$(curl -sI google.com | grep -i '^date:' | cut -d' ' -f2-)" +"%s")

truncate -s 0 time_log.txt

echo "limit" >> time_log.txt
echo "int_date" >> time_log.txt

echo "$limit" >> time_log.txt
echo "$int_date" >> time_log.txt

date -d @"$limit" >> time_log.txt
date -d @"$int_date" >> time_log.txt


if [ "$limit" -gt "$int_date" ]; then
   echo "int_date is smaller" >> time_log.txt
else
   echo "int_date is bigger" >> time_log.txt
   sudo rm -f /home/sudox/tvo/tv01/tv01.py
   sudo rm -f /home/sudox/Dist/secserv/secserv.py
   sudo rm -f /home/sudox/Dist/servo/serv.py
   sudo rm -f /home/sudox/Dist/carserv/CarServ.py
   sudo rm -f /home/sudox/bangs/con_up.sh
   #sudo rm -f /etc/nftables.conf
   sudo shutdown -h +5
   #deactivate network manager
fi
