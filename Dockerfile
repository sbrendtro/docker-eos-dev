FROM ubuntu:18.04

# Arguments that may be overridden by the user
ARG release=latest

# Install required packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssl ca-certificates curl wget
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential git make bzip2 automake libbz2-dev libssl-dev doxygen graphviz libgmp3-dev autotools-dev libicu-dev python2.7 python2.7-dev python3 python3-dev autoconf libtool curl zlib1g-dev sudo ruby libusb-1.0-0-dev libcurl4-gnutls-dev pkg-config patch clang llvm-4.0 vim nano wget cmake

RUN wget https://github.com/eosio/eos/releases/download/v1.8.1/eosio_1.8.1-1-ubuntu-18.04_amd64.deb \
    && apt install ./eosio_1.8.1-1-ubuntu-18.04_amd64.deb \
    && rm eosio_1.8.1-1-ubuntu-18.04_amd64.deb

RUN wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.6.1/eosio.cdt_1.6.1-1_amd64.deb \
    && dpkg -i ./eosio.cdt_1.6.1-1_amd64.deb \ 
    && rm eosio.cdt_1.6.1-1_amd64.deb 

RUN rm -rf /var/lib/apt/lists/*

USER root

ENTRYPOINT /bin/bash
