FROM postgres:12-alpine

RUN apk --no-cache add postgresql-contrib

COPY createExtension.sh /docker-entrypoint-initdb.d/
RUN chmod 755 /docker-entrypoint-initdb.d/createExtension.sh
