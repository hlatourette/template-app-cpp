FROM gcc:9.3

RUN apt-get update && apt-get install -y \
    cmake

COPY . /usr/src/templateapp

WORKDIR /usr/src/templateapp
RUN mkdir build

WORKDIR /usr/src/templateapp/build
RUN cmake .. -DCMAKE_INSTALL_PREFIX=/
RUN cmake --build .
RUN cmake --build . --target install
# TODO should call makefile ^ (all steps should be defined in makefile)

WORKDIR /usr/src/templateapp

CMD ["/etc/init.d/templateapp.sh"]