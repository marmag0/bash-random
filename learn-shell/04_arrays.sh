#! /opt/homebrew/bin/bash

# Arrays can hold several values under one name
# An array is initialized by assigning space-delimited values enclosed in ()

new_array=(apple banana cucumber "apple pie")
echo "${new_array[2]}"
new_array[2]="zucchini"
echo "${new_array[2]}"


# The total number of elements can be obtained by #
# All entries in the array can be obtained by @

echo "All elements of an array: ${new_array[@]}"
echo "Number of array entries: ${#new_array[@]}"
echo "The last element of an array: ${new_array[${#new_array[@]}-1]}"
echo "The last element of an array: ${new_array[-1]}"
