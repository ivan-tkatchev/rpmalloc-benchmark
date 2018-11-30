set datafile separator ","
set key autotitle columnheader
set logscale y 10
stats 'benchmark.txt' using 0 nooutput
set multiplot layout 2,1
plot for [i=0:(STATS_blocks - 1)] 'benchmark.txt' using 4:7 index i with lines
unset logscale y
plot for [i=0:(STATS_blocks - 1)] 'benchmark.txt' using 4:9 index i with lines
