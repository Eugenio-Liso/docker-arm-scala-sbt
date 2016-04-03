FROM armv7/armhf-ubuntu:15.10

RUN apt-get update
RUN apt-get install -y scala

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
RUN apt-get install -y apt-transport-https && apt-get update
RUN apt-get install -y sbt
RUN sbt

