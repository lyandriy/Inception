#Dockerfile Wordpress
FROM debian:buster

RUN apt-get update && apt-get install -y php-fpm php-mysql curl

RUN apt-get install wget -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/tool.sh /
COPY ./conf/php7.3-fpm.log /var/log/
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

CMD ["bash", "./tool.sh"]
