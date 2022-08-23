FROM ubuntu:latest

RUN apt update -y && apt upgrade -y

RUN apt-get install build-essential git autoconf wget subversion pkg-config libjansson-dev libxml2-dev uuid-dev libsqlite3-dev libtool -y

WORKDIR cd /opt
RUN git clone -b next git://git.asterisk.org/dahdi/linux dahdi-linux

WORKDIR cd dahdi-linux
RUN make
RUN make install

WORKDIR cd /opt
RUN git clone -b next git://git.asterisk.org/dahdi/tools dahdi-tools

WORKDIR cd dahdi-tools
RUN autoreconf -i
WORKDIR ./configure
RUN make install
RUN make install-config
RUN dahdi_genconf modules

RUN git clone https://gerrit.asterisk.org/libpri libpri
WORKDIR cd libpri
RUN make
RUN make install

RUN git clone -b 18 https://gerrit.asterisk.org/asterisk asterisk-18

WORKDIR cd asterisk-18/
RUN contrib/scripts/get_mp3_source.sh
RUN contrib/scripts/install_prereq install

RUN ./configure
#RUN make menuselect

RUN make -j2
RUN make install

RUN make samples
RUN make basic-pbx

RUN make config
RUN ldconfig

COPY extensions.conf /etc/asterisk/extensions.conf
COPY sip.conf /etc/asterisk/sip.conf
COPY users.conf /etc/asterisk/users.conf
COPY voicemail.conf /etc/asterisk/voicemail.conf

