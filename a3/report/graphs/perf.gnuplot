set xlabel 'Data Set Size'
set ylabel 'AER'
set term postscript enhanced 18
set output 'perf.eps'
set key right top 
set size 0.8,0.8
#set size 0.7, 0.7
set yrange [0.0:1.0]
#set xrange [0.05:0.40]
set logscale x

plot 'perf_heuristic.dat' using 3:7 title 'Heuristic' w linespoints, \
     'perf_model1.dat' using 3:7 title 'Model 1 Weird Soft EM' w linespoints, \
     'perf_hmm.dat' using 3:7 title 'HMM' w linespoints

