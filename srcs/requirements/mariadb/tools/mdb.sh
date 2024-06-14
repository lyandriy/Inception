service mariadb start
mysql -u root<<EOF

CREATE DATABASE IF NOT EXISTS ${USER_MDB};
CREATE USER ${USER_MDB}@% IDENTIFIED BY $PASS_MDB;
GRANT ALL PRIVILEGES ON ${USER_MDB}.* TO ${USER_MDB}@%.;
FLUSH PRIVILEGES;
EOF