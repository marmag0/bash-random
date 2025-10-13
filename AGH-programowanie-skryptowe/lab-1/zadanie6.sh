#!/bin/bash

report=/tmp/raport_systemowy.csv
if [ ! -f "$report" ]; then
    echo "TIMESTAMP, CPU_LOAD, MEM_USED, MEM_FREE, USERS, TOP_PROC" > $report
fi

timestamp=$(date "+%a %Y-%m-%d %H:%M:%S")
cpu_load=$(uptime | awk -F'load averages?:' '{print $2}' | awk '{print $1}')
mem_used=$(vm_stat | awk '/Pages active:/ {a=$3} /Pages wired down:/ {w=$4} /Pages speculative:/ {s=$4} END {print int((a+w+s)*4096/1024/1024)}')
mem_free=$(vm_stat | awk '/Pages free:/ {f=$3} /Pages speculative:/ {s=$4} END {print int((f+s)*4096/1024/1024)}')
users=$(who | awk '{print $1}' | sort | uniq | tr '\n' ' ')
top_proc=$(ps -eo pid,comm,%cpu -r | head -n 6 | tail -n 5 | awk '{print $2 "(" $3 "%)"}' | tr '\n' ' ')

echo "$timestamp, $cpu_load, $mem_used, $mem_free, $users, $top_proc" >> $report


