#!/bin/sh

docker rmi kunst1080/dev-base
docker build -t kunst1080/dev-base --force-rm=true base
