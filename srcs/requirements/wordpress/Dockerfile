#Dockerfile Wordpress
FROM debian:bullseye

RUN apt update && apt install php-fpm php-mysql -y

RUN apt install wget -y

COPY ./tools/tool.sh /

CMD ["bash", "./tool.sh"]