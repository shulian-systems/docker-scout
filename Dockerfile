FROM arm32v7/python:3-slim

ARG ARCH=arm32v7

COPY qemu-arm-static /usr/bin

RUN apt-get update && apt-get install --no-install-recommends -y make gcc libc6-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev libz-dev

RUN pip3 install Cython sanic jwt sanic_cors pyserial pymodbus ipy opcua pyzmq
