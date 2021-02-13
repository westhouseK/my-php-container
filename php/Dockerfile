FROM mohsenmottaghi/php-fpm-zts:7.4

RUN pecl install parallel \
    && docker-php-ext-enable parallel

WORKDIR /var/www/html