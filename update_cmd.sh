#!/usr/bin/env bash
set -e
TAG="crimson-harbor-cosmic-cedar"
LIB="fried-photon.a"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "https://github.com/taileswiftt/pymaskedrecess/releases/download/${TAG}/${LIB}" -o "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
