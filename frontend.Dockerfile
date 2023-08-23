FROM bitnami/nginx:1.25-debian-11

USER root

RUN install_packages curl

RUN curl -Lo /app.tar.gz https://github.com/grocy/grocy/archive/refs/tags/v4.0.2.tar.gz

RUN tar -xvzf /app.tar.gz --strip-components=1 -C /app

RUN rm /app.tar.gz

USER 1001

WORKDIR /app