FROM baseboxorg/jdk6-oracle
MAINTAINER Anthony Lai <anthony.lai@hostname.io>

ENV JAVA_HEAP_SIZE 512
ENV JAVA_HOME /usr/lib/jvm/java-6-oracle

RUN apt-get -qqy install tomcat7
RUN sed -i "s|#JAVA_HOME=.*|JAVA_HOME=$JAVA_HOME|g" /etc/default/tomcat7
RUN sed -i "s|-Xmx128m|-Xmx${JAVA_HEAP_SIZE}m|g" /etc/default/tomcat7
