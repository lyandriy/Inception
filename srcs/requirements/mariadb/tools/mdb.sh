#!/bin/bash

service mysql start

echo "CREATE DATABASE IF NOT EXISTS $DATABASE;
CREATE USER IF NOT EXISTS '$USER_MDB'@'%' IDENTIFIED BY '$USER_PASS';
GRANT ALL PRIVILEGES ON $DATABASE.* TO $ROOT_PASS@'%';
ALTER USER 'root'@'localhst' IDENTIFIED BY '$ROOT_PASS';
FLUSH PRIVILEGES;" > /tmp/confmdb.sql

mysql < /tmp/confmdb.sql

rm /tmp/confmdb.sql