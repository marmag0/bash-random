#! /opt/homebrew/bin/bash

array=( 23 45 34 1 2 3 )

# referencing a particular value
echo ${array[2]}

# referencing all values
echo ${array[@]}

# evaluating the number of elements inside the array
echo ${#array[@]}
