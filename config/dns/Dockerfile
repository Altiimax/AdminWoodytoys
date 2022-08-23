FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 -y

COPY named.conf.options /etc/bind/
COPY named.conf.default-zones /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf /etc/bind/
COPY db.local.kevin.ephec-ti.be /etc/bind/
COPY db.kevin.ephec-ti.be /etc/bind/

EXPOSE 53

CMD named -g
