FROM node:14.0.0-alpine3.11

WORKDIR /sample-ecs-laravel-docker/next

RUN apk update && \
    apk add --no-cache \
      build-base

COPY next /sample-ecs-laravel-docker/next

CMD ["/bin/sh", "-c", "npm run build && npm run start"]
