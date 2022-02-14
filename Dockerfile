FROM php:7.4-fpm-alpine

ARG DOCKER_PHP_DATE_TIMEZONE
ENV DOCKER_PHP_DATE_TIMEZONE=$DOCKER_PHP_DATE_TIMEZONE

# Use the default production configuration
#RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Use custom configuration
COPY ./php.ini /usr/local/etc/php/php.ini

COPY . /usr/src/myapp

WORKDIR /usr/src/myapp

CMD [ "php", "./your-script.php" ]
