# syntax=docker/dockerfile:1

FROM ubuntu:24.04

ENV APT_DEPENDENCIES="build-essential \
    git \
    libssl-dev \
    ruby-dev elixir \
    erlang-dev \
    erlang-xmerl \
    qt6-tools-dev \
    qt6-tools-dev-tools \
    libqt6svg6-dev \
    libqt6opengl6-dev \
    supercollider-server \
    sc3-plugins-server alsa-utils  \
    libasound2-dev cmake ninja-build \
    pipewire-jack \
    libspa-0.2-jack \
    qt6-wayland \
    libwayland-dev \
    libxkbcommon-dev \
    libegl1-mesa-dev \
    libx11-dev \
    libxft-dev \
    libxext-dev \
    qpwgraph \
    compton \
    qtcreator \
    curl \
    libibus-1.0-dev \
    gcc-12"

WORKDIR /sonic-pi

COPY ./build-scripts /tmp/build-scripts

ADD https://github.com/sonic-pi-net/sonic-pi.git /sonic-pi

RUN /tmp/build-scripts/install-apt-dependencies.sh \
    && /tmp/build-scripts/install-sonic-pi.sh \
    && rm -rf /tmp/build-scripts