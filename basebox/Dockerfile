FROM ubuntu-debootstrap:trusty
MAINTAINER Anthony Lai <anthony.lai@hostname.io>

ENV DEBIAN_FRONTEND noninteractive

RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup &&\
	echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-cache &&\

    echo $'#!/bin/sh\nexit 101' > /usr/sbin/policy-rc.d &&\
    chmod +x /usr/sbin/policy-rc.d &&\

    apt-get -qq update &&\
    apt-get -qqy upgrade &&\
    apt-get -qqy install python-software-properties vim pwgen unzip curl git-core 

ADD tcp_wait.sh tcp_wait.sh
ADD create_db_pg.sh create_db_pg.sh
ADD create_db_mysql.sh create_db_mysql.sh
