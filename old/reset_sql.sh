#!/bin/bash
DB_USER=''
DB_PASS=''
DB_TABLE=''

mysqldump -u $DB_USER -p $DB_PASS --add-drop-table --no-data $DB_TABLE | grep ^DROP | mysql -u $DB_USER -p $DB_PASS $DB_TABLE

