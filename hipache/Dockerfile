FROM baseboxorg/nodejs
MAINTAINER Anthony Lai <anthony.lai@hostname.io>

RUN npm install hipache -g

ADD config.json config.json
ADD start.sh start.sh

EXPOSE 80
RUN rm /usr/sbin/policy-rc.d
CMD ["/start.sh"]
