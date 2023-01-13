FROM nginx:1.23.3-alpine

RUN apk update && apk upgrade
RUN apk add --no-cache wget vim bash \
  && rm -rf /var/cache/apk/*

COPY conf.d/* /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/nginx.conf