#! /bin/bash
# send update notification
# first arg is DB file to observe 
# second arg is mail address to send to
# third argument is mail subject
python $PWD/scripts/update_notification.py $PWD/tweets.db "example@example.com" "Twitter Stream"
# backup database file
# first arg is DB file to backup
# second arg is S3 bucket to send backup to
sh $PWD/scripts/db_backup.sh $PWD/tweets.db s3://example-bucket/backups/
