#!/bin/bash

# Ensure the script is run as root
if [ "$(id -u)" != "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

echo "Updating package list and upgrading existing packages..."
apt update && apt upgrade -y

echo "Installing dev packages..."
DEBIAN_FRONTEND=noninteractive \
apt install -y \
        build-essential \
        curl \
        git \
        vim \
        emacs \
        valgrind \
        gdb \
        libsfml-dev \
        g++ \
        gcc \
        cmake \

# ssh should already be enabled for an ubuntu server install
# but do it again for completeness
apt install -y openssh-server
systemctl enable ssh
systemctl start ssh
