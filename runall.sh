#!/bin/sh

os="linux"

loops=100
names="rpmalloc lockfree-malloc jemalloc"
threads="1 2 4 8 16 32 64 128"

mv benchmark.txt benchmark.txt.old

for name in $names; do
	executable=bin/$os/release/x86-64/benchmark-$name

        echo -e "\n\n$name" >> benchmark.txt
        for th in $threads; do
	    $executable $th 0 2 5 $loops 90000 3000 4 64000
        done
done

