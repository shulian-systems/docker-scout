FROM arm32v7/python:3-slim

ARG ARCH=arm32v7

COPY qemu-arm-static /usr/bin

RUN apt-get update && apt-get install --no-install-recommends -y make gcc libczmq-dev

RUN pip3 install Cython pyserial pymodbus opcua pyzmq
