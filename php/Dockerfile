FROM php:fpm

RUN apt-get update && apt-get install --yes libpq-dev
RUN docker-php-ext-install pgsql pdo_pgsql
RUN sed -i 's/\(listen =\).*/\1 0.0.0.0:9000/' /usr/local/etc/php-fpm.d/www.conf
