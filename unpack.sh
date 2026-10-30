#!/bin/sh
# usage: KEY=... ./unpack.sh  -> extracts the workspace into ./ws
set -e; mkdir -p ws
openssl enc -d -aes-256-cbc -pbkdf2 -pass env:KEY -in sprint-in.tar.gz.enc | tar -C ws -xzf -
