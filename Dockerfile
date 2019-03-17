FROM php:fpm-alpine
RUN docker-php-ext-install mysqli
RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev && \
docker-php-ext-install gd
