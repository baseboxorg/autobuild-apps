FROM baseboxorg/ubuntu
MAINTAINER Anthony Lai <anthony.lai@hostname.io>

ENV USER root
ENV PASS aiPeekai0AeZ2meephoolais7doo1thu

RUN apt-get -qqy install mysql-server-5.5

ADD my.cnf /etc/mysql/my.cnf
ADD start.sh start.sh

VOLUME ["/var/lib/mysql"]

EXPOSE 3306
RUN rm /usr/sbin/policy-rc.d
CMD ["/start.sh"]
