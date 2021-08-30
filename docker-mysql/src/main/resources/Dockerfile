FROM mysql:8.0.13
# Define environment variables.
ENV MYSQL_PID_FILE /code/mysqld.pid
# uncomment if manual config needed
#COPY --chown=mysql:mysql docker.mysql.cnf /etc/mysql/mysql.conf.d/docker.mysql.cnf
RUN mkdir "/code/"
RUN chmod -R -777 /code/
ADD mysql-entrypoint.sh /code/mysql-entrypoint.sh
ADD mysql-env.env /code/mysql-env.env

# copy init db data
COPY --chown=mysql:mysql mysql-init-data.sh /docker-entrypoint-initdb.d/

EXPOSE 3306 3306
EXPOSE 13306 13306
# Define default command
#CMD ["mysqld"]
#ENTRYPOINT ["/code/mysql-entrypoint.sh"]
CMD ["mysqld"]
