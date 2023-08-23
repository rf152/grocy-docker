FROM bitnami/php-fpm:8.2

RUN curl -Lo /app.tar.gz https://github.com/grocy/grocy/archive/refs/tags/v4.0.2.tar.gz

RUN tar -xvzf /app.tar.gz --strip-components=1 -C /app

RUN rm /app.tar.gz

WORKDIR /app