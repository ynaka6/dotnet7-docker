FROM --platform=linux/amd64 mysql:8.0.14

ENV TZ=UTC

COPY ./docker/mysql8/my.cnf /etc/my.cnf
COPY ./docker/mysql8/initdb.d/init.sql /docker-entrypoint-initdb.d
