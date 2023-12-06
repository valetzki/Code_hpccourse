#!/bin/bash
# author: Valentina
# date: 06_12_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=2
#SBATCH -e /LETHE/COURSES/hpc_course/valentina/Challenge4/gcatcont.out
#SBATCH -o /LETHE/COURSES/hpc_course/valentina/Challenge4/gcatcont.out

# define directory path for shorter code
dir=/LETHE/COURSES/hpc_course/bac_genomes/fasta

# remove and define output file
rm /LETHE/COURSES/hpc_course/valentina/Challenge5/gcatcont.txt
out=/LETHE/COURSES/hpc_course/valentina/Challenge5/gcatcont.txt

# iterate through desired directory 
for file in $dir/*
do

    # count AT and GC content
    gc=$(grep -v '>' $file | tr -cd 'GC' | wc -m) 
    at=$(grep -v '>' $file | tr -cd 'AT' | wc -m) 

    # calculate ratio and echo into output file
    $(echo "scale=4; $gc/$at" | bc -l >> $out)

done 

