#!/bin/bash
# author: Valentina
# date: 30_11_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=2

time /LETHE/COURSES/hpc_course/valentina/Challenge1/challenge1gff.sh &
time /LETHE/COURSES/hpc_course/valentina/Challenge1/challenge1fasta.sh

exit 0