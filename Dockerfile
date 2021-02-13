FROM php:7.4-zts

RUN apt-get update \
    && pecl install parallel \
    && docker-php-ext-enable parallel \
    && { \
  echo 'date.timezone = "Asia/Tokyo"'; \
  echo 'mbstring.internal_encoding = "UTF-8"'; \
  echo 'mbstring.language = "Japanese"'; \
} > /usr/local/etc/php/conf.d/myphp.ini

EXPOSE 8080

WORKDIR /var/www/html