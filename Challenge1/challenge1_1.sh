#!/bin/bash
# author: Valentina
# date: 30_11_23

# define path shortcut
path=/LETHE/COURSES/data/bac_genomes/refseq/bacteria

#create file for my bacteria genomes
file=/LETHE/COURSES/hpc_course/valentina/Challenge1/valeslist.txt

# count total number of files in directory
ls $path > /LETHE/COURSES/hpc_course/valentina/Challenge1/listall.txt
lt= wc -l > /LETHE/COURSES/hpc_course/valentina/Challenge1/listall.txt

# divide by number of participants:12
l=$((lt/12))

# since i am number 12/12, i take the bottom 2514 directory names
ls $path | tail -$l > $file 

# confirm completion
echo "done"


