#!/bin/bash

path_list=$(find ../ -name cherry_pie.sh)
echo "Founded files at directories:"
echo "$path_list"

echo "Copy in progress..."
for path in $path_list
do
    if [ -s "$path" ]
    then
	echo "File is not empty"
        #echo -en "\nNo file was copied" >> "../white_ladge.txt"
    else
        cp cherry_pie.sh "$path"
        directory_name=${path:3}
        directory_name=${directory_name%%/cherry_pie.sh}
        echo "cherry_pie.sh was coppied successfully at $directory_name"
    fi
done

timestamp=$(date +%F_%T)
file_path=$(pwd)
file=${file_path#*/home/osboxes/lab2/}
echo -en "\n$timestamp $file ordered a cherry pie" >> "../white_ladge.txt"

echo "Cycle was end"
