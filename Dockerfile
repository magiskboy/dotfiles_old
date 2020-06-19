FROM ubuntu:latest

WORKDIR /third_party

RUN apt update -y && apt upgrade -y

ADD . .

RUN ./install base

CMD /bin/bash
