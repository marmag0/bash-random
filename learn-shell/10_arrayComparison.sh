#! /opt/homebrew/bin/bash

array=( 23 45 34 1 2 3 )

# referencig to a particular value
echo ${array[2]}

# referencing to all values
echo ${array[@]}

# evaluating the number of elements inside array
echo ${#array[@]}
