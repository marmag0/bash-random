#!/bin/bash

book=$1
path=$2
chapter=0

mkdir $path/pan-tadeusz

while read -r line; do
    if [[ $line =~ ^Księga[[:space:]][[:alpha:]]*$ ]]; then
        chapter=$((chapter + 1))
        current_file="$path/pan-tadeusz/chapter-$chapter.txt"
        echo "$line" > "$current_file"    
    else
        if [ -n "$current_file" ]; then
            echo "$line" >> "$current_file"
        fi
    fi
done < $book
