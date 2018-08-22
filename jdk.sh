#!/bin/bash

add-apt-repository ppa:linuxuprising/java

apt update

apt install oracle-java10-installer

apt install oracle-java10-set-default

javac -version

apt install maven
