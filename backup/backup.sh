#!/bin/bash
export PGPASSWORD="gitbucket"
time=`date "+%Y%m%d%H%M"`
mkdir -p backup
pg_dump -h postgres -U gitbucket gitbucket > /root/backup/backup_${time}.sql
