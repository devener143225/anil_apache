FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
COPY index.html  /var/www/html/
RUN apt-get clean -y
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
