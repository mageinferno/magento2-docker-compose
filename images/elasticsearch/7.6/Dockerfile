FROM elasticsearch:7.6.2

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic

ADD docker-healthcheck.sh /docker-healthcheck.sh
HEALTHCHECK CMD ["bash", "/docker-healthcheck.sh"]
