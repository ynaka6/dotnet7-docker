FROM nginx:1.23.3-alpine

RUN apk update && apk upgrade
RUN apk add --no-cache wget vim bash \
  && rm -rf /var/cache/apk/*

COPY ./docker/web/conf.d/* /etc/nginx/conf.d/
COPY ./docker/web/nginx.conf /etc/nginf