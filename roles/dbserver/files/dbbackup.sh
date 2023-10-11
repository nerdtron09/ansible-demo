#!/bin/bash
TODAY=$(date +%F)

cd /home/ansibleuser/db_backup
mysqldump -udb_user -p'db_pass' --all-databases > "backup.sql.$TODAY"
gzip "backup.sql.$TODAY"