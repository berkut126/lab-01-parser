FROM ubuntu:18.04
LABEL maintainer="rusdevops@gmail.com"

RUN apt update && apt install -y software-properties-common && \
    apt-add-repository -y "ppa:ubuntu-toolchain-r/test" && apt update && \
    apt install -y libcurl4-openssl-dev g++-7 lcov gcovr cmake cmake-data python3-pip clang && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install cpplint
