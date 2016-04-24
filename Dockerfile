FROM ubuntu:16.04

RUN apt-get update  
RUN apt-get install -y ca-certificates

ADD https://cli.run.pivotal.io/stable?release=linux64-binary&version=6.17.0&source=github-rel /usr/bin/cf.tgz

RUN cd /usr/bin && tar xzf /usr/bin/cf.tgz
RUN cd /; ls /usr/bin/cf*
