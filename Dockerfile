FROM ubuntu:14.04
MAINTAINER s.vinodakumar@gmail.com

RUN apt-get update

RUN apt-get -y install apache2

EXPOSE 80

ADD htmls/index.html /var/www/html/

ENTRYPOINT /usr/sbin/apache2ctl -DFOREGROUND
