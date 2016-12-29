FROM ubuntu:16.10

MAINTAINER Damon Prater <damon@inxaos.com>

VOLUME ["/opt/starbound/storage"]

ADD starbound_server.sh /opt/starbound_server.sh

RUN apt-get update && \
	apt-get install lib32gcc1 wget libpng12-0 -y && \
	mkdir -p /opt/starbound /opt/steamcmd && \
	cd /opt/steamcmd && \
	wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz -O /tmp/steamcmd.tar.gz && \
	tar zxvf steamcmd_linux.tar.gz && \
	rm steamcmd_linux.tar.gz && \
	chmod +x ./steamcmd.sh /opt/starbound_server.sh

EXPOSE 21025
EXPOSE 21026

CMD /opt/starbound_server.sh
