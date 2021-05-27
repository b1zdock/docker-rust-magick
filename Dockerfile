FROM rust:1-slim-buster

RUN apt-get update \
 && apt-get install -y curl wget libssl-dev \
 && rm -rfv /var/lib/apt/lists/*

RUN wget -qO - dist.1-2.dev/imei | bash