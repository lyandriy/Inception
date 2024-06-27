#service mariadb start
#mysql -u root<<EOF

#CREATE DATABASE IF NOT EXISTS ${USER_MDB};
#CREATE USER ${USER_MDB}@% IDENTIFIED BY $PASS_MDB;
#GRANT ALL PRIVILEGES ON ${USER_MDB}.* TO ${USER_MDB}@%.;
#FLUSH PRIVILEGES;
#EOF

service mariadb start

echo "CREATE DATABASE IF NOT EXISTS ${USER_MDB};
CREATE USER IF NOT EXISTS ${USER_MDB}@'%' IDENTIFIED BY '${PASS_MDB}';
GRANT ALL PRIVILEGES ON ${USER_MDB}.* TO ${USER_MDB}@'%';
FLUSH PRIVILEGES;
exit" > /tmp/confmdb.sql

mysql < /tmp/confmdb.sql

rm /tmp/confmdb.sql

mysqld