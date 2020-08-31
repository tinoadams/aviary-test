#!/bin/bash

docker rm -f test || echo "..."
[ -z $1 ] && CMD="sh -c /host_volume/entrypoint.sh" || CMD="bash"
docker run -ti --name test --hostname test -v $PWD:/host_volume -w /host_volume ubuntu:16.04 $CMD
