FROM resin/rpi-raspbian
RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install build-essential autoconf automake libtool apt-utils libudev-dev libusb-1.0-0-dev libncurses5-dev pkg-config libcurl4-openssl-dev libtool
RUN apt-get -y install wget
WORKDIR /cgminer
RUN wget http://ck.kolivas.org/apps/cgminer/4.10/cgminer-4.10.0.tar.bz2

RUN tar -xvjpf cgminer-4.10.0.tar.bz2

WORKDIR /cgminer/cgminer-4.10.0
RUN ./configure --enable-icarus

RUN apt-get -y install make
RUN apt-get -y install curl


RUN make

ENV USER ruifigueiredo.zucky
ENV PASS 0
ENV URL stratum+tcp://stratum.slushpool.com:3333

ENTRYPOINT ["bash"]

ADD ./run.sh ./run.sh

RUN chmod +x ./run.sh

CMD ["/cgminer/cgminer-4.10.0/run.sh"]
