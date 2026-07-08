#!/bin/bash

sleep 15

limit="1806899100"
limit="1806899101"

DIR="/home/sudox/lim/"
FILENAME="set_lim_zero_.txt"
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

truncate -s 0 time_log_zero_.txt

echo "limit" >> time_log_zero_.txt
echo "int_date" >> time_log_zero_.txt

echo "$limit" >> time_log_zero_.txt
echo "$int_date" >> time_log_zero_.txt

date -d @"$limit" >> time_log_zero_.txt
date -d @"$int_date" >> time_log_zero_.txt


if [ "$limit" -gt "$int_date" ]; then
   echo "int_date is smaller" >> time_log_zero_.txt
else
   echo "int_date is bigger" >> time_log_zero_.txt
   #
   sudo rm -f /home/sudox/startup/startup.sh
   #
   #deactivate network manager
   #
fi