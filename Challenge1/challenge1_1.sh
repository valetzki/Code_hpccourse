#!/bin/bash
# author: Valentina
# date: 30_11_23

# define path shortcut
path=/LETHE/COURSES/data/bac_genomes/refseq/bacteria/

#create file for my bacteria genomes
file=/LETHE/COURSES/hpc_course/valentina/Challenge1/valeslist.txt
touch $file

# lines per person is count of files in sheet/participant number. Result: 2514 lines/person
# since i am number 12/12, i take the bottom 2514 directory names
tail -2514 $path > $file 

# confirm completion
echo "done"


