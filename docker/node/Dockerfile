FROM node:14.0.0-alpine3.11 as builder

WORKDIR /sample-ecs-laravel-docker/next

RUN apk update && \
    apk add --no-cache \
      build-base

COPY next/package.json next/package-lock.json /sample-ecs-laravel-docker/next/

RUN npm install


FROM node:14.0.0-alpine3.11

WORKDIR /sample-ecs-laravel-docker/next

COPY ./next/ /sample-ecs-laravel-docker/next/
COPY --from=builder /sample-ecs-laravel-docker/next/ /sample-ecs-laravel-docker/next/

CMD ["npm", "run", "dev"]
