#!/bin/bash

mysqldump -u autowp -pzxcv1234 --add-drop-table --no-data autowp | grep ^DROP | mysql -uautowp -pzxcv1234 autowp

