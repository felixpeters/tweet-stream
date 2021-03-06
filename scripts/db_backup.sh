#! /bin/bash
source $PWD/.env
TIME_STAMP=$(date +"%Y%m%d-%H%M")
FILE_NAME="tweet_backup_$TIME_STAMP.sql"
TMP_DIR="$HOME/tmp_backup"
FILE_PATH="$TMP_DIR/$FILE_NAME"

mkdir $TMP_DIR
cp $DB_PATH $FILE_PATH
aws s3 cp $FILE_PATH $S3_BUCKET
rm -R $TMP_DIR

