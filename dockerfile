FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.0

COPY custom-entrypoint.sh /custom-entrypoint.sh

ENTRYPOINT ["/custom-entrypoint.sh"]
CMD ["eswrapper"]
