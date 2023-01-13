FROM --platform=linux/x86_64 mysql:8.0

ENV TZ=UTC

COPY ./mysql8/my.cnf /etc/my.cnf
COPY ./mysql8/initdb.d/init.sql /docker-entrypoint-initdb.d
