#!/bin/bash

while read -r line; do
    timestamp=$(awk '{print $1, $2, $3}' <<< "$line")
    host=$(awk '{print $4}' <<< "$line")
    user=$(awk '{print $5}' <<< "$line")
    ip=$(awk '{print $6}' <<< "$line")
    echo "timestamp:$timestamp host:$host user:$host adres_ip:$ip"
done < ~/txt-files/przykladowy_log.log

echo
echo "Liczba wystąpień poszczególnych użytkowników:"
awk '{print $5}' ~/txt-files/przykladowy_log.log | sort | uniq -c | sort -nr
