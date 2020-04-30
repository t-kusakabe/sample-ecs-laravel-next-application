#!/bin/sh
envsubst '$$SERVER_NAME $$PHP_CONTAINER' < /etc/nginx/conf.d/backend.conf.template > /etc/nginx/conf.d/backend.conf
envsubst '$$SERVER_NAME $$NODE_CONTAINER' < /etc/nginx/conf.d/frontend.conf.template > /etc/nginx/conf.d/frontend.conf
