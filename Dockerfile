FROM php:fpm-alpine
RUN docker-php-ext-install mysqli
RUN apk update and apk add -y sendmail libpng-dev

RUN apk update && \
    apk add -y \
        zlib1g-dev 

RUN docker-php-ext-install mbstring

RUN docker-php-ext-install zip

RUN docker-php-ext-install gd
