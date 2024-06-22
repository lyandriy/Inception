#Dockerfile MariaDB
FROM debian:bullseye

RUN apt update && apt install mariadb-server -y && apt-get clean

COPY ./tools/mdb.sh /

EXPOSE 3306

CMD ["bash", "./mdb.sh"]