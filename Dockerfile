FROM python:3-alpine

RUN apk add --no-cache docker-compose && \
    rm -rf /var/cache/apk/*

COPY files/docker-compose-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["sh", "/usr/local/bin/docker-compose-entrypoint.sh"]
