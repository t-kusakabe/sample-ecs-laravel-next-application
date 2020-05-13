FROM node:14.0.0-alpine3.11

WORKDIR /sample-ecs-laravel-docker/next

RUN apk update && \
    apk add --no-cache \
      build-base

COPY ./next/package.json ./next/package-lock.json /sample-ecs-laravel-docker/next/

CMD ["npm", "install"]
