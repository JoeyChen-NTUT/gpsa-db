FROM mariadb:latest

#set sql_mode as mariadb as 10.1 and add ERROR_FOR_DIVISION_BY_ZERO and NO_AUTO_CREATE_USER
RUN sed -i -e '/^#sql_mode.*=.*/a sql_mode=NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION,ERROR_FOR_DIVISION_BY_ZERO' /etc/mysql/my.cnf
