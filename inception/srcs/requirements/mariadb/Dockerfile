FROM debian:buster

RUN apt update && apt upgrade -y
RUN apt install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/script.sql /

RUN chmod +x /script.sql

EXPOSE 3306

#RUN /script.sh
RUN service mysql start && mysql < script.sql && rm -f script.sql;

CMD ["mysqld"]