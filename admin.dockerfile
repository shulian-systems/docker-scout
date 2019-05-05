FROM arm32v7/python:3-slim

ARG ARCH=arm32v7

COPY qemu-arm-static /usr/bin

RUN apt-get update && apt-get install --no-install-recommends -y make gcc libc6-dev libffi-dev libssl-dev libczmq-dev

RUN pip3 install Cython sanic jwt sanic_cors ipy pyzmq
