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
    make install && \
    make test

FROM ubuntu:latest
COPY --from=builder /usr/local/etc/init.d/templateapp.sh /usr/local/etc/init.d/templateapp.sh
COPY --from=builder /usr/local/bin/templateapp.tsk /usr/local/bin/templateapp.tsk
CMD ["/usr/local/etc/init.d/templateapp.sh"]