#!/bin/sh

os="linux"

loops=100
names="rpmalloc lockfree-malloc jemalloc tcmalloc"
threads="1 2 8 32 128"

mv benchmark.txt benchmark.txt.old

for name in $names; do
	executable=bin/$os/release/x86-64/benchmark-$name

        for th in $threads; do
	    $executable $th 0 2 4 $loops 90000 3000 4 64000
        done
done

