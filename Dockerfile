FROM php:fpm-alpine
RUN docker-php-ext-install mysqli
RUN apk update && apk add  --no-cache \
    git \
    curl \
    mc \
    libmcrypt \
    libmcrypt-dev \
    libxml2-dev \
    freetype \
    freetype-dev \
    libpng \
    libpng-dev \
    libjpeg-turbo \
    libjpeg-turbo-dev g++ make autoconf
RUN docker-php-ext-install gd \
      && apk del --no-cache freetype freetype-dev libpng libpng-dev libjpeg-turbo libjpeg-turbo-dev \
      && rm -rf /tmp/*
