FROM ubuntu
MAINTAINER abhishek.shukla@gmail.com
RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install vim -y
RUN apt-get install apache2 -y \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/evolve.zip /var/www/html
WORKDIR /var/www/html
RUN unzip evolve.zip
RUN cp -rvf evolve/* .
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
