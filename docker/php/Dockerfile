FROM composer:latest as builder

WORKDIR /sample-ecs-laravel-docker

COPY . .

ENTRYPOINT composer install


FROM php:fpm-alpine3.11

COPY ./docker/php/conf.d/server.ini /usr/local/etc/php/conf.d/server.ini

WORKDIR /sample-ecs-laravel-docker

RUN apk add --no-cache \
        build-base \
        git \
        zlib-dev \
        libmemcached-dev \
        autoconf && \
    docker-php-ext-install pdo_mysql

COPY . .

RUN cp .env.example .env
