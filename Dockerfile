FROM ubuntu:latest 
RUN apt-get update -y
RUN apt-get install apache2 -y
WORKDIR /var/www/html 
COPY . .
EXPOSE 8085
ENTRYPOINT apachectl -D FOREGROUND 