#!/bin/sh -eu

DID="$(docker ps | grep 'cytopia/php-fpm-7.0' | awk '{print $1}')"
docker exec -i -t "${DID}" env TERM=xterm /bin/bash -l

