#Dockerfile NGINX
FROM debian:buster

RUN apt update
RUN apt-get install nginx -y
RUN apt install openssl -y
RUN apt-get clean

RUN openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
    -keyout /etc/ssl/nginxssl.key \
    -out /etc/ssl/nginxssl.crt -sha256 -subj "/CN=lyandriy.42.fr"

COPY ./conf/default /etc/nginx/sites-available/

CMD ["nginx", "-g", "daemon off;"]