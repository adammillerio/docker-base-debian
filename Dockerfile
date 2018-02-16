# Base Debian image
# Based on Debian "stretch" 9.3
FROM debian:9.3
LABEL maintainer="miller@adammiller.io"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt install -y \
        htop \
        vim \
        git \
        tmux \
        sudo \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
