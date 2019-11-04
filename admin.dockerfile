FROM arm32v7/python:3.7-slim

ARG ARCH=arm32v7

COPY qemu-arm-static /usr/bin

RUN apt-get update && \
    apt-get install --no-install-recommends -y make gcc libc6-dev libffi-dev libssl-dev libczmq-dev sed procps iputils-ping iproute2 && \
    apt-get install --no-install-recommends -y libzmq5 libpcsclite-dev pcscd pcsc-tools swig inetutils-ping usbutils systemd

RUN pip3 install --no-cache-dir Cython pyjwt sanic sanic_cors ipy pyzmq peewee netifaces Jinja2 docker wifi pyscard
