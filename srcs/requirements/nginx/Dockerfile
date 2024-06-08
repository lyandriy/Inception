#Dockerfile NGINX
FROM debian:bullseye

RUN apt update && apt-get install nginx -y && apt-get clean

RUN rm /etc/nginx/sites-enabled/default && rm /etc/nginx/nginx.conf

COPY ./conf/default /etc/nginx/sites-enabled/

COPY ./conf/nginx.conf /etc/nginx/

CMD