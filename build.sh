#!/bin/sh

./destroy.sh

docker rmi kunst1080/dev
docker build -t kunst1080/dev --force-rm=true .
