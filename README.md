# Automated EC2 backup S3 bucket 

Introduction
------------
This project provides a Bash script to automate scheduled backups of critical data from an AWS EC2 instance. It compresses files using tar, logs backup activity, and securely replicates the archive to an Amazon S3 bucket using the AWS CLI. Ideal for lightweight, reliable, and cost-effective backup automation.

 <p align="center">
  <img src="https://github.com/user-attachments/assets/7fada82f-b154-4975-9322-b2047a515c20" alt="Project Screenshot" width="600"/>
</p>

Key Features
------------------------

 - Backup Scheduling : Allow users to schedule backups at specific times or intervals (e.g., daily, weekly, or monthly) .
 - Backup Compression: Compress the backup files to save storage space using the tar command with gzip (tar -czf) or other compression methods.
 - Logging: Create log files to record backup operations, including start time, end time, and any errors encountered during the backup.
 - AWS Integration: Seamlessly integrate with the AWS Command Line Interface (CLI) for secure and efficient uploads to Amazon S3.


Conclusion 
----------------------------
This script offers a lightweight, modular approach to automating EC2 data backups and replication to Amazon S3 using cron, tar, and the AWS CLI. It provides a solid foundation for production-ready backup workflows, and can be extended with features like encryption, S3 versioning, or integration with monitoring tools.

For a comprehensive walkthrough, please visit the full blog post: [Automate Virtual Machine Data Backup & Replication To An Amazon S3 Bucket using bash script](https://medium.com/@iyousefzeer/automate-virtual-machine-data-backup-replication-to-an-amazon-s3-bucket-using-bash-script-437752beae4e)
