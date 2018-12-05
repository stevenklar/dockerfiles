#!/bin/sh
for D in `find . -maxdepth 1 -type d -not -path '*/\.*' -not -path '.'`
do
	cmd=`echo "$D" | cut -c3-`
    echo "===> Build $cmd"  && \
    ./build.sh $cmd
    echo "===> Push $cmd"  && \
    docker push stevenklar/$cmd:latest
done
