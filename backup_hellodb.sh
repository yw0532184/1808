#!/bin/bash
mkdir /backup
DIR=/backup
for db in `mysql -uroot -p123qqq...A -e 'show databases;' | grep -vE 'information_schema|performance_schem|sys|database'`;
do mysqldump -uroot -p123qqq...A -B $db > /$DIR/$db.sql;
done
