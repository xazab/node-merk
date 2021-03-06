FROM node:12-buster

RUN apt update
RUN apt install -y python make cmake g++ curl llvm clang linux-headers-amd64

WORKDIR /app

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH=/root/.cargo/bin:$PATH

RUN rustup install nightly
RUN rustup default nightly

RUN npm i -g neon-cli
