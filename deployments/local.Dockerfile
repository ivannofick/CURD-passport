#  docker build -t mysqlandredis:v1.0 -f .\deployments\local.Dockerfile .

# docker run -d -p 8080:8080 -p 3306:3306 -p 6379:6379 mysqlandredis:v1.0

FROM mysql:8.0.37-debian

ENV MYSQL_USER=trondol
ENV MYSQL_PASSWORD=trondolan

RUN apt-get update && \
    apt-get install -y wget php php-cli php-curl php-mysql

RUN wget -O /var/www/adminer.php https://www.adminer.org/latest.php

EXPOSE 3306 6379 8080

CMD ["redis-server"]

CMD ["mysqld"]

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/"]
