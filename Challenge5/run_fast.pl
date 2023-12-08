#!/bin/perl
# author: Valentina
# date: 07_12_23



# define core number
core=3

# define directory path
dir=/LETHE/COURSES/hpc_course/valentina/bac_genomes/fasta

# define output path
out=/LETHE/COURSES/hpc_course/valentina/Challenge5/run_fast.out 

# run jobs in parallel
$(parallel -j $core | basename -a $dir/* >> $out)