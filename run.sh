#!/bin/sh
exec docker run -d --name $MYDOCKER_NAME \
    -p "$MYDOCKER_SSH_PORT:22" \
    --restart=unless-stopped \
    -v $MYDOCKER_VOLUME_HOST:$MYDOCKER_VOLUME_CONTAINER \
    kunst1080/dev
