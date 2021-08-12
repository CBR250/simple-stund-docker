FROM ubuntu:14.04
MAINTAINER Matti Jokitulppo <matti.jokitulppo@aalto.fi>

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install g++ patch make curl -y
RUN apt-get install wget -y

RUN mkdir /stund

RUN wget "https://sourceforge.net/projects/stun/files/stun/0.96/stund_0.96_Aug13.tgz"
RUN tar --strip-components=1 -xf stund_0.96_Aug13.tgz -C /stund

ADD . /stund

WORKDIR /stund
RUN sed -i '/error Need some/d' ./stun.cxx
RUN make

EXPOSE 3478

CMD ["/stund/server","-h","172.17.0.2"]
