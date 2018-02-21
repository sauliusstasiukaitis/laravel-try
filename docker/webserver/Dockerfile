#FROM php:7-apache
FROM php:7.0-apache

RUN apt-get update -y \
    && apt-get install -y libpng-dev curl libcurl4-openssl-dev \
    && pecl install xdebug

RUN docker-php-ext-install pdo pdo_mysql gd curl

COPY vhost.conf /etc/apache2/sites-enabled/000-default.conf
RUN mv /var/www/html /var/www/public

RUN a2enmod rewrite
RUN service apache2 restart
