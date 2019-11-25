FROM ubuntu:18.04

RUN apt update && apt install tzdata -y && apt install apache2 -y && apt install php7.0 -y && apt install libapache2-mod-php -y
COPY charity /var/www/html/
EXPOSE 80
CMD apache2ctl -D FOREGROUND
