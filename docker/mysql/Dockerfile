FROM mysql:8.0.20

ENV MYSQL_USER root
ENV MYSQL_ROOT_PASSWORD root

COPY ./docker/mysql/config.d/mysql.cnf /etc/mysql/config.d/mysql.cnf
COPY ./docker/mysql/init/init.sql /docker-entrypoint-initdb.d/init.sql
