#!/bin/bash

directory=$1
report=$2

files_found=0
files_edited=0

echo "nazwa_skryptu, rozmiar, brak_x" > $report

while read -r line; do
    size=$(awk '{print $5}' <<< "$line")
    perms=$(awk '{print $1}' <<< "$line")
    file=$(awk '{print $9}' <<< "$line")
    files_found=$((files_found+1))
    if [[ $perms == *x* ]]; then
        chmod $directory/$file ugo-x
        brak_x=usunięty
        files_edited=$((files_edited+1))
    else
        brak_x=brak
    fi
    echo "$file, $size, $brak_x" >> $report
done < <(ls -lpk "$directory" | grep -Ev "/$" | grep -Ev ".*\.sh$" | grep -Ev "^total")

echo "Pliki znalezione: $files_found, Pliki edytowane $files_edited"