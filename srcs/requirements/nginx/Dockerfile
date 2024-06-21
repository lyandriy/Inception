#Dockerfile NGINX
FROM debian:bullseye

RUN apt update && apt-get install nginx -y && apt install openssl -y && apt-get clean

RUN openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
    -keyout /etc/ssl/nginxssl.key \
    -out /etc/ssl/nginxssl.crt -sha256 -subj "/CN=lyandriy.42.fr"

COPY ./conf/default /etc/nginx/sites-available/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]