FROM postgres:12-alpine

RUN apk --no-cache add postgresql-contrib

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]
