FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
COPY *.html  /var/www/html/
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
