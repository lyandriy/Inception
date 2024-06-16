#Dockerfile MariaDB
FROM debian:bullseye

RUN apt update && apt install mariadb-server -y && apt-get clean

COPY ./tools/mdb.sh /

CMD ["bash", "./mdb.sh"]