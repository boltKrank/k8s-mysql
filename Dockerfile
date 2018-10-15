FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD=puppetlabs \
    MYSQL_DATABASE=wordpress \
    MYSQL_USER=wordpress \
    MYSQL_PASSWORD=wordpress
RUN apt-get update && \
apt-get install -y sed
RUN sed -i "s|bind-address\t= 127.0.0.1|bind-address = 0.0.0.0|g" /etc/mysql/mysql.conf.d/mysqld.cnf
VOLUME  ["/etc/mysql", "/var/lib/mysql"]
EXPOSE 3306 
