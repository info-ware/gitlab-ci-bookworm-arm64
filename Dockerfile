FROM debian:trixie

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture arm64 && apt-get update && apt-get install -y \
    gcc-aarch64-linux-gnu \
    g++-aarch64-linux-gnu \
    build-essential \
    devscripts \
    cmake \
    debhelper \
    dh-exec \
    pkg-config \
    libboost-all-dev \
    rsync \
    libasound2-dev:arm64 \
    libgles2-mesa-dev:arm64 \
    libboost-filesystem-dev:arm64 \
    libcurl4-openssl-dev:arm64 \
    zlib1g-dev:arm64 \
    uuid-dev:arm64 \
    libxext-dev:arm64 \
    qt6-base-dev:arm64 \
 && rm -rf /var/lib/apt/lists/*
