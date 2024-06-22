#Dockerfile Wordpress
FROM debian:bullseye

RUN apt update && apt install php-fpm php7.4-fpm php-mysql -y

RUN apt install wget -y

COPY ./tools/tool.sh /
COPY ./conf/php7.4-fpm.log /var/log/
COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/

EXPOSE 9000

CMD ["bash", "./tool.sh"]
