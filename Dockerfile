FROM gcc:9.3 AS builder
RUN apt-get update && apt-get install -y \
    catch \
    cmake && \
    apt-get autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
COPY . /usr/src/templateapp
WORKDIR /usr/src/templateapp
RUN make build && \
    make install && \
    make test

FROM ubuntu:latest
COPY --from=builder /etc/init.d/templateapp.sh /etc/init.d/templateapp.sh
COPY --from=builder /bin/templateapp.tsk /bin/templateapp.tsk
CMD ["/etc/init.d/templateapp.sh"]