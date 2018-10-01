#! /bin/bash
# send update notification
python $PWD/scripts/update_notification.py
# backup database file
sh $PWD/scripts/db_backup.sh
