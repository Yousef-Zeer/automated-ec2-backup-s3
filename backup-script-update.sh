#!/bin/bash

# ================================================
# S3_BUCKET --> s3 bucket created usinf aws cli 
# FILE_TO_UPLOAD --> the file that will be uploaded on s3 bucket 
# aws s3 cp --> to take a copy of the backup file and upload it to s3 bucket 
# ================================================



time=$(date +%m-%d-%y_%H_%M_%S)
Backup_file=/home/ubuntu/bash
Dest=/home/ubuntu/backup
filename=file-backup-$time.tar.gz
LOG_FILE="/home/ubuntu/backup/logfile.log"

S3_BUCKET="s3-yousef-project"
FILE_TO_UPLOAD="$Dest/$filename"


if ! command -v aws &> /dev/null; then
  echo "AWS CLI is not installed. Please install it first."
  exit 2
fi

if [ $? -ne 2 ]
  then
  if [ -f $filename ]
  then
      echo "Error file $filename already exist!" | tee -a "$LOG_FILE"
  else
      tar -czvf "$Dest/$filename" "$Backup_file" 
      echo "Backup completed successfully. Backup file: $Dest/$filename " | tee -a "$LOG_FILE"
      echo
      aws s3 cp "$FILE_TO_UPLOAD" "s3://$S3_BUCKET/"
  fi
fi

if [ $? -eq 0 ]; then
  echo
  echo "File uploaded successfully to the S3 bucket: $S3_BUCKET"
else
  echo "File upload to S3 failed."
fi