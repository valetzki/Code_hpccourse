#!/bin/bash
# author: Valentina
# date: 30_11_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=2

# execute the files individually whilst timing progress
# put first file execution in background with & to run them parallelly
time /LETHE/COURSES/hpc_course/valentina/Challenge1_Valentina/challenge1gff.sh &
time /LETHE/COURSES/hpc_course/valentina/Challenge1_Valentina/challenge1fasta.sh

exit 0