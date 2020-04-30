FROM nginx:1.17.10-alpine

WORKDIR /etc/nginx/conf.d

ARG SERVER_NAME=t-kusakabe.site
ARG PHP_CONTAINER=127.0.0.1
ARG NODE_CONTAINER=127.0.0.1

RUN apk update && \
    apk add --no-cache \
      tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN rm -f ./*
COPY ./docker/nginx/conf.d .
COPY ./docker/nginx/envsubst.sh /

RUN /bin/sh /envsubst.sh
