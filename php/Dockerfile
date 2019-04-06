FROM php:fpm

RUN apt-get update && apt-get install --yes libpq-dev
RUN docker-php-ext-install pgsql pdo_pgsql
RUN sed -i 's/\(listen =\).*/\1 0.0.0.0:9000/' /usr/local/etc/php-fpm.d/www.conf
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
RUN sed -i 's/\(expose_php =\) On/\1 Off/' "$PHP_INI_DIR/php.ini"