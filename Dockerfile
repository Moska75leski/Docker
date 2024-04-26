version: '3.8'

services:
  mysql_db_latest:
    container_name: mysql_db_latest
    image: mysql
    restart: unless-stopped
    environment:
      MYSQL_DATABASE: "mysqldb"
      MYSQL_USER: "user_mysql_db_latest"
      MYSQL_PASSWORD: "mysql"
      MYSQL_ROOT_PASSWORD: "root"
    volumes:
      - mysqldata:/var/lib/mysql/data
    ports:
      - '3306:3306'

volumes:
  mysql: