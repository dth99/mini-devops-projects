#!/bin/bash

# Log Archive Tool

log_directory=$1

# check if the directory present
if [ ! -d "$log_directory" ]; then
    echo "Error : Directory '$log_directory' does not exist."
fi

#set archive directory
archive_dir="/home/dth99/Videos/log_archives"
mkdir -p "$archive_dir"

# create archive filename with timestamp
current_time=$(date +"%Y%m%d_%H%M%S")
archive_name="logs_archive_$current_time.tar.gz"
archive_path="$archive_dir/$archive_name"

# creating the tar.gz
tar -czf "$archive_path" "$log_directory"

#log the action to a log file
log_file="$archive_dir/archive_log.txt"
echo "[$current_time] Archived $log_directory to $archive_name" >> "$log_file"

echo "Logs archive succesfully to $archive_path"
