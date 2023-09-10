FROM php:7.4.33-apache-bullseye

RUN apt-get update && \ 
    apt-get install -y nano spell zip unzip && \
    docker-php-ext-install mysqli pdo pdo_mysql && \
    docker-php-ext-enable mysqli

COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini

RUN mkdir /var/log/ci_logs && \
    chown www-data:www-data /var/log/ci_logs

CMD ["apache2-foreground"]
