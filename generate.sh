#!/bin/sh
# reset generated binary file
rm -f generated_bin
touch generated_bin

# get all directories
for D in `find . -maxdepth 1 -type d -not -path '*/\.*' -not -path '.'`
do
	cmd=`echo "$D" | cut -c3-`
    echo "$cmd() { $(pwd)/$cmd/run.sh \$@ }" >> generated_bin
done
