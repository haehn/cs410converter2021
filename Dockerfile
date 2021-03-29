FROM ubuntu:20.04

MAINTAINER Daniel Haehn version: 0.1


ADD converter.cc converter.cc

RUN apt-get update
RUN apt-get install -y g++

RUN g++ converter.cc -o converter

ENTRYPOINT ["./converter"]


