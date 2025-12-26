#!/bin/sh

DATE=$(date +"%Y%m%d%H%M%S")
DIR="/tmp/$DATE"

mkdir -p $DIR

echo "Backup generado en $DATE" > $DIR/backup.sql

aws s3 cp $DIR/backup.sql \
  s3://bucket-codigo-backup/paredes/database/$DATE/backup.sql
