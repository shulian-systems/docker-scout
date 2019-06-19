FROM arm32v7/python:3-slim

ARG ARCH=arm32v7

COPY qemu-arm-static /usr/bin

RUN apt-get update && apt-get install --no-install-recommends -y gcc libc6-dev libxml2-dev libxslt1-dev libz-dev libczmq-dev libzmq5

RUN pip install --no-cache-dir Cython pyserial pymodbus opcua pyzmq peewee kafka-python

