FROM php:fpm-alpine
RUN docker-php-ext-install mysqli
RUN apk add curl \
    ssmtp \
    tzdata \
    php5-fpm \
    php5-mcrypt \
    php5-soap \
    php5-openssl \
    php5-gmp \
    php5-pdo_odbc \
    php5-json \
    php5-dom \
    php5-pdo \
    php5-zip \
    php5-mysql \
    php5-sqlite3 \
    php5-pdo_pgsql \
    php5-bcmath \
    php5-gd \
    php5-odbc \
    php5-pdo_mysql \
    php5-pdo_sqlite \
    php5-gettext \
    php5-xmlreader \
    php5-xmlrpc \
    php5-bz2 \
    php5-iconv \
    php5-pdo_dblib \
    php5-curl \
    php5-ctype
