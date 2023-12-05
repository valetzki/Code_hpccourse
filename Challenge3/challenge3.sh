#!/bin/bash
# author: Valentina
# date: 30_11_23

# assign input from slurm file to a variable


blastn -query /LETHE/COURSES/data/AliScale_data/1.fa -db /LETHE/COURSES/hpc_course/valentina/AliScale_data/$1.fa -out /LETHE/COURSES/hpc_course/valentina/Challenge3/comp_$1.txt -num_threads $2 -mt_mode 0

# Confirm blast completion and give informtion about completed program
echo
echo "blast"
echo "threads $1"
echo "database $2"
