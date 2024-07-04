#!/bin/bash

service mariadb start

echo "CREATE DATABASE IF NOT EXISTS ${DATABASE};
CREATE USER IF NOT EXISTS ${USER_MDB}@'%' IDENTIFIED BY '${USER_PASS}';
GRANT ALL PRIVILEGES ON ${DATABASE}.* TO ${USER_MDB}@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASS}' ;
FLUSH PRIVILEGES;" > /tmp/confmdb.sql

mysql < /tmp/confmdb.sql

kill $(cat /var/run/mysqld/mysqld.pid)

rm /tmp/confmdb.sql

exec mysqld
