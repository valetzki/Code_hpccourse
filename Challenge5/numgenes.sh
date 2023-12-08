#!/bin/bash
# author: Valentina
# date: 07_12_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=2
#SBATCH -e /LETHE/COURSES/hpc_course/valentina/Challenge5/numgenes.out
#SBATCH -o /LETHE/COURSES/hpc_course/valentina/Challenge5/numgenes.out

# define directory path for shorter code
dir=/LETHE/COURSES/hpc_course/valentina/bac_genomes/gff

# remove and define output file
rm /LETHE/COURSES/hpc_course/valentina/Challenge5/numgenes.txt
out=/LETHE/COURSES/hpc_course/valentina/Challenge5/numgenes.txt

# create and rm test file
rm /LETHE/COURSES/hpc_course/valentina/Challenge5/test.txt
test=/LETHE/COURSES/hpc_course/valentina/Challenge5/test.txt

# iterate through desired directory 
for file in $dir/*
do

    # count lines with full word match to 'gene'
    $(grep -v '^#' $file | cut -f3 | grep -w 'gene' | wc -l >> $out) 

done 
