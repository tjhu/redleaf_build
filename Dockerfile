FROM rustlang/rust:nightly-slim

RUN rustup component add llvm-tools-preview
RUN rustup component add rust-src
RUN cargo install cargo-xbuild
RUN cargo install stack-sizes
RUN apt-get update
RUN apt-get install nasm xorriso -y
