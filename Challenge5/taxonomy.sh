#!/bin/bash
# author: Valentina
# date: 06_12_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=2
#SBATCH -e /LETHE/COURSES/hpc_course/valentina/Challenge4/taxonomy.out
#SBATCH -o /LETHE/COURSES/hpc_course/valentina/Challenge4/taxonomy.out

# define directory path for shorter code
dir=/LETHE/COURSES/hpc_course/bac_genomes/fasta

# define output file
out=/LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.txt