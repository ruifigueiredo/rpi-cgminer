# rpi-cgminer


#For AU3

docker run  -it --restart always --privileged --device /dev/ttyUSB0 ruifigueiredo/rpi-cgminer:4.10.0
env vars

ENV USER ruifigueiredo.zucky

ENV PASS 0

ENV URL stratum+tcp://stratum.slushpool.com:3333

With the default user and worker

docker run  -it --restart always --privileged --device /dev/ttyUSB0 ruifigueiredo/rpi-cgminer:4.10.0
