FROM ubuntu:20.04

RUN apt-get update && apt-get -y upgrade && apt-get -y install default-jdk language-pack-ja wget
ENV LANG ja_JP.UTF-8

ARG var="8.5.73"
RUN wget https://www-eu.apache.org/dist/tomcat/tomcat-8/v${var}/bin/apache-tomcat-${var}.tar.gz -P /tmp \
&& tar -xf /tmp/apache-tomcat-${var}.tar.gz -C /opt/ \
&& rm -r /tmp/apache-tomcat-${var}.tar.gz

ENTRYPOINT /opt/apache-tomcat-8.5.73/bin/startup.sh; /bin/bash