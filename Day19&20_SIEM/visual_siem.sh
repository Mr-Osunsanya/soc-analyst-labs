#!/bin/bash

echo "🚨 SIEM ALERT DASHBOARD 🚨"
echo "---------------------------"

sudo grep "Failed password" /var/log/auth.log \
| awk '{print $11}' \
| sort  \
| uniq -c \
| sort -nr | while read count  ip; do 

    if ["$count" -ge 10 ]; then
        echo -e "\e[31m[HIGH] $ip → $count attempts\e[0m"
    elif [ "$count" -ge 5]; then
        echo -e "\e[33m[MEDIUM] $ip → $count attempts\e[0m"
    else
        echo -e "\e[32m[LOW]    $ip → $count attempts\e[0m"
    fi

done
