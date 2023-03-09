FROM mysql:8.0

ENV TZ=UTC

COPY ./docker/mysql8/initdb.d/init.sql /docker-entrypoint-initdb.d
