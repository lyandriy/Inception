#Dockerfile MariaDB
FROM debian:bullseye

RUN apt update && apt-get install mariadb-server -y && apt-get clean

COPY ./tools/mdb.sh /
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d 

EXPOSE 3306

CMD ["bash", "./mdb.sh"]