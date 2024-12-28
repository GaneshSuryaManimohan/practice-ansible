#!/bin/bash

CPU_USAGE=$(ps aux --sort=-%cpu | head -n 6 |awk '{ $5=""; $6=""; $7=""; $8=""; $9=""; $10=""; print }')
CPU_THRESHOLD=1
MSG=""
if [ $CPU_USAGE -ge $CPU_THRESHOLD ]
then
    MSG+="CPU Usage is more than the threshold $CPU_THRESHOLD, current usage: $CPU_USAGE"
fi
echo -e "Message: $MSG"