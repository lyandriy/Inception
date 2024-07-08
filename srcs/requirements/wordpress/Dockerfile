#Dockerfile Wordpress
FROM debian:buster

RUN apt-get update && apt-get install php-fpm php-mysql -y

RUN apt-get install wget -y

COPY ./tools/tool.sh /
COPY ./conf/php7.3-fpm.log /var/log/
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

EXPOSE 9000

CMD ["bash", "./tool.sh"]
