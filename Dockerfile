FROM php:7.2-apache
RUN docker-php-ext-install mysqli
RUN apt-get update \
    && apt-get install -y libzip-dev \
    && apt-get install -y zlib1g-dev \
    && apt-get install -y libxml2-dev \
    && apt-get install -y vim \
    && apt-get install -y libapache2-mod-wsgi \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip \
    && a2enmod rewrite \
    && a2enmod ssl \