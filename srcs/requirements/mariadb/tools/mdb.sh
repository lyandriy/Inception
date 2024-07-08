#!/bin/bash

service mysql start

echo << EOF > /tmp/confmdb.sql
CREATE DATABASE IF NOT EXISTS $DATABASE;
CREATE USER IF NOT EXISTS '$USER_MDB'@'%' IDENTIFIED BY '$USER_PASS';
GRANT ALL PRIVILEGES ON $DATABASE.* TO '$USER_MDB'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '$ROOT_PASS';
FLUSH PRIVILEGES;
EOF

mysql < /tmp/confmdb.sql

kill $(cat /var/run/mysqld/mysqld.pid)

exec /usr/bin/mysqld_safe