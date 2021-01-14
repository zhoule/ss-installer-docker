#!/bin/bash

## apt update and install docker
apt upate && apt -y install docker.io


## install shadowsocks server
docker run -dt --name ss -p 11223:11223 mritd/shadowsocks -s "-s 0.0.0.0 -p 11223 -m chacha20-ietf-poly1305 -k zhoule123*"

## install bbr
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh && chmod +x bbr.sh && ./bbr.sh

## install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose



