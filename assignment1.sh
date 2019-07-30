#!/bin/bash
 
#This bash script is created for assignment a user's home directory.
user=$(whoami)
input=/home/$user
output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz

#The function total_files reports a total number of files for home directory.

function total_files {
        find $1 -type f | wc -l
}

tar -czf $output $input 2> /dev/null

src_files=$( total_files $input)

echo "Files to be included or total files: $src_files"

ls -l $output
