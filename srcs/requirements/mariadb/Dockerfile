#Dockerfile MariaDB
FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y && apt-get clean

COPY ./tools/mdb.sh /home
COPY ./conf/my-server.cnf /etc/mysql/mariadb.conf.d/

RUN mkdir /var/run/mysqld && chown mysql:mysql /var/run/mysqld
RUN chmod 755 /home/mdb.sh && /home/mdb.sh

RUN /usr/bin/mysqld_safe