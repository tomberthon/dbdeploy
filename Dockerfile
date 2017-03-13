FROM php:latest

RUN apt-get update && apt-get install -y \
      mysql-client

RUN pear channel-discover pear.phing.info && \
    pear config-set preferred_state beta && \
    pear install phing/phing

RUN docker-php-ext-install pdo pdo_mysql

RUN mkdir /tmp/dbdeploy /tmp/dbdeploy/build

COPY library /tmp/dbdeploy/library
COPY build.xml /tmp/dbdeploy

WORKDIR /tmp/dbdeploy

CMD phing