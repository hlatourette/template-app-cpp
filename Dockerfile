FROM gcc:9.3 AS builder
RUN apt-get update && apt-get install -y \
    catch \
    cmake && \
    apt-get autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
COPY . /usr/local/src/templateapp
WORKDIR /usr/local/src/templateapp
RUN make build && \
    make test && \
    make package

FROM ubuntu:latest as tester
COPY --from=builder /usr/local/src/templateapp/build/ /usr/local/src/templateapp/build/
WORKDIR /usr/local/src/templateapp/build
RUN dpkg -i templateapp-Linux.deb

# FROM ubuntu:latest as publisher
# COPY --from=tester /usr/local/src/templateapp/build/...deb ....
# test the install ... dpkg -i .deb
# RUN dpkg-upload ...