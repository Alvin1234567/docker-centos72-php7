FROM herder/centos72-php7:2.0

ENV PHP_VERSION 71

RUN yum install -y "php${PHP_VERSION}w-gd" \
    && yum install -y "php${PHP_VERSION}w-mcrypt" \
    && yum install -y "php${PHP_VERSION}w-opcache"

VOLUME  /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]