FROM php:8.2.1-fpm
RUN apt-get update -y && apt-get install -y --no-install-recommends \
libwebp-dev \
libjpeg62-turbo-dev \
libpng-dev \
libxpm-dev \
libfreetype6-dev \
libzip-dev
#RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/ --enable-gd-native-ttf
RUN pecl install xdebug && docker-php-ext-install \
mysqli \
pdo \
pdo_mysql \
gd \
zip \
&& docker-php-ext-enable \
xdebug \
pdo_mysql \
&& rm -rf /var/lib/apt/lists/*
COPY php/php.ini /usr/local/etc/php/
COPY html/* /var/www/html/
RUN mkdir -p /var/www/logs