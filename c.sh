#!/bin/bash

# run as sudo
# install gcc for Debian/Ubuntu
apt update
apt install build-essential manpages-dev

# verify gcc
whereis gcc
which gcc
gcc --version