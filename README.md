# mydockerfile
My development environment on Docker

## How to Build

```bash
./build-base.sh
./build.sh
```

## Required environment variables
- MYDOCKER_NAME - Image name.
- MYDOCKER_VOLUME_HOST - Host directory as a data volume on run.
- MYDOCKER_VOLUME_CONTAINER - Continaer directory mount to.
- MYDOCKER_SSH_PORT - SSH forwarding port.
