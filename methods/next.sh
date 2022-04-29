#!/bin/bash
last_directory_name=0
sub_dir_count=$(find ./ -maxdepth 1 -type d | wc -l)
if [[ "$sub_dir_count" -ne 1 ]]
then last_directory_name=$(ls -d */ | sort -V | tail -1 | tr -d /)
fi
next_directory_name=$((last_directory_name+1))
mkdir ./$next_directory_name
cd ./$next_directory_name
touch main.go README.md
echo "package main" >> main.go