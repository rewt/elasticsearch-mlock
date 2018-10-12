FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.0

RUN bin/elasticsearch-plugin install mapper-murmur3
RUN bin/elasticsearch-plugin install repository-azure --batch

COPY custom-entrypoint.sh /custom-entrypoint.sh

ENTRYPOINT ["/custom-entrypoint.sh"]
CMD ["eswrapper"]