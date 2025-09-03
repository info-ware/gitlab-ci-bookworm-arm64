FROM debian:bookworm

RUN apt-get update && apt-get install -y gcc-aarch64-linux-gnu g++-aarch64-linux-gnu build-essential devscripts cmake debhelper dh-exec pkg-config libboost-all-dev
RUN apt-get install -y libboost-filesystem-dev 
RUN apt-get install -y libasound2-dev libgles2-mesa-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y uuid-dev
RUN apt-get install -y rsync
RUN apt-get install -y libxext-dev
RUN apt-get install -y qt6-base-dev


RUN dpkg --add-architecture arm64
RUN apt-get update && apt-get install -y libasound2-dev:arm64 libgles2-mesa-dev:arm64
RUN apt-get install -y libboost-filesystem-dev:arm64
RUN apt-get install -y libcurl4-openssl-dev:arm64
RUN apt-get install -y zlib1g-dev:arm64
RUN apt-get install -y uuid-dev:arm64
RUN apt-get install -y libxext-dev:arm64
RUN apt-get install -y qt6-base-dev:arm64
