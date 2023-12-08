#!/bin/bash
# author: Valentina
# date: 06_12_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=2
#SBATCH -e /LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.out
#SBATCH -o /LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.out

# define directory path for shorter code
dir=/LETHE/COURSES/hpc_course/bac_genomes/gff

# define output file
rm /LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.txt
out=/LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.txt


# iterate through desired directory 
for file in $dir/*
do

    # get tax id from gff files (line with ##species was found repeatedly, thus only take first such line) by extracting numbers from correct line
    id=$(grep '^##species' $file | head -1 | tr -cd [:digit:])

    # use docker ncbi/edirect efetch to pull phylum of given bacteria 
    $(efetch -db taxonomy -id $id -format xml | grep -B1 'phylum' | head -1 | tr '>' '<' | cut -d '<' -f3 >> $out)

done 
