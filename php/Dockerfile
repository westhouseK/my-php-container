FROM mohsenmottaghi/php-fpm-zts:7.4

RUN pecl install parallel \
    # install xdebug
    && pecl install xdebug-2.9.8 \
    && docker-php-ext-enable parallel \
    && docker-php-ext-enable xdebug

WORKDIR /var/www/html