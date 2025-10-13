#!/bin/bash

wc -lw ~/txt-files/panTadeusz.txt

egrep -c "\bLitw.[^n]*\b" ~/txt-files/panTadeusz.txt

egrep -o "[[:upper:]][[:lower:]]*" ~/txt-files/panTadeusz.txt | sort | uniq -c | sort -nr | head -20

grep -n "Ojczy[z, ź]n[[:lower:]]*" ~/txt-files/panTadeusz.txt | awk '{sub(/Ojczyzn[[:lower:]]*/, toupper(substr($0, match($0, /Ojczyzn[[:lower:]]*/), RLENGTH))); print}'
