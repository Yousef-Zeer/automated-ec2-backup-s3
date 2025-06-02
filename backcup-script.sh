#!/bin/bash

# ================================================
# time variable will be part of the backup file name 
# filename is the name of compression file
# LOG_FILE to record backup operations 
# ================================================

time=$(date +%m-%d-%y_%H_%M_%S) 
Backup_file=$1
Dest=/home/ubuntu/backup
filename=file-backup-$time.tar.gz
LOG_FILE="/home/ubuntu/backup/logfile.log"

if [ -z "$Backup_file"  ]
then
    echo "Please, Enter the directory that you want to backup " | tee -a "$LOG_FILE"
    exit 2
fi

if [ $? -ne 2 ]
  then
  if [ -f $filename ]
  then
      echo "Error file $filename already exists!" | tee -a "$LOG_FILE"
  else
      tar -czvf "$Dest/$filename" "$Backup_file" 
      echo "Backup completed successfully. Backup file: $Dest/$filename " | tee -a "$LOG_FILE"
  fi
fi