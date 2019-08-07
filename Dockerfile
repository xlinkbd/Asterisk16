# Dockerfile Asterisk-13

FROM       debian:10-slim
MAINTAINER Antonio <satskiy.a@gmail.com>

RUN apt-get update && apt-get install -y asterisk && rm -rf /var/lib/apt/lists/* && apt-get -y autoremove


COPY ./ /etc/asterisk
CMD ["asterisk","-cvv"]
EXPOSE 8089
## RUN wiith     docker run  -d asterisk13new:latest asterisk -cvv

