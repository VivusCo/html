#!/bin/sh
# usage: KEY=... ./pack.sh <folder-inside-ws>  -> writes out/<name>.tar.gz.enc
set -e; mkdir -p out; n=$(basename "$1")
tar -C ws -czf - "$1" | openssl enc -aes-256-cbc -pbkdf2 -salt -pass env:KEY -out "out/$n.tar.gz.enc"
