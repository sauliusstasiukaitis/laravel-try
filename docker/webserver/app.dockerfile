FROM php:7.4.33-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && pecl install xdebug \
    && docker-php-ext-enable imagick \
&& docker-php-ext-install mcrypt pdo_mysql
