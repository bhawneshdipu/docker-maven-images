#!/bin/sh
#Start mysql server
MYSQL_COMMAND="mysql -s --show-warnings -u root -p${MYSQL_ROOT_PASSWORD}"
#Create Users
echo "creating users:"
${MYSQL_COMMAND} -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'; GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%'; FLUSH PRIVILEGES;"
echo "Welcome to MySQL Docker"
