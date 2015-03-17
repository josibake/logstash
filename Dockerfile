#
# Logstash Dockerfile
#
# https://github.com/dockerize/logstash
#

# Pull base image
FROM dockerize/java:1.7

MAINTAINER Dockerize "http://dockerize.github.io"

# Install Logstash
ENV VERSION 1.4.2
ENV FILE logstash-$VERSION.tar.gz

RUN wget -nv -O /tmp/$FILE https://download.elasticsearch.org/logstash/logstash/$FILE
RUN tar -xzf /tmp/$FILE -C /tmp
RUN mv /tmp/logstash-$VERSION /logstash

# Mountable directory
VOLUME ["/data"]

# Working directory
WORKDIR /data

# RUN
CMD ["/logstash/bin/logstash agent -f logstash.conf"]
