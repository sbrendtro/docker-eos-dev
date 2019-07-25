# docker-eos-dev

This is an Ubuntu 18.04 LTS based Docker image with EOS and eosio.cdt (Contract Development Toolkit).

EOS is installed in /opt/eos/

### The installed development tools
(All tools are installed in /usr/bin/)
---
* eosio-cpp
* eosio-cc
* eosio-ld
* eosio-init
* eosio-abidiff
* eosio-wasm2wast
* eosio-wast2wasm
* eosio-ranlib
* eosio-ar
* eosio-objdump
* eosio-readelf

### Using the Image

For typical use, you would want to mount a local folder into the container:

```docker run -v /full/path/to/your/folder/:/app/ sbrendtro/eos-dev:latest

This will drop you into a Bash shell inside the container and you can find your local folder in /app

## Build your own docker image
For those who like to meddle with Docker, you can try these out:

### Build image with a different version
Edit the version references in Dockerfile to build the Docker image with a different version of EOS or the eos.cdt.

### Build your own image from scratch
Try building with the Dockerfile-build if you want to build an image with a custom-built EOS or eos.cdt from source.
