# Version: 0.0.1
FROM codingbunch/jdk8-base
MAINTAINER Coding Bunch "codingbunch@googlegroups.com"
WORKDIR /tmp
RUN wget -O orientdb-2.0-rc2.tar.gz 'http://www.orientechnologies.com/download.php?file=orientdb-community-2.0-rc2.tar.gz&email=unknown@unknown.com&os=linux'
WORKDIR /opt
RUN tar -zxf /tmp/orientdb-2.0-rc2.tar.gz
WORKDIR /opt/orientdb-community-2.0-rc2/bin
RUN chmod +x *
ENV ORIENTDB_ROOT_PASSWORD='codingbunch'
EXPOSE 2480
EXPOSE 2424
ENTRYPOINT ["./server.sh"]
