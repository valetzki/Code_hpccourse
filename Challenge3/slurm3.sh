#!/bin/bash
# author: Valentina
# date: 30_11_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=10
#SBATCH -e /LETHE/COURSES/hpc_course/valentina/Challenge3/slurm3.out
#SBATCH -o /LETHE/COURSES/hpc_course/valentina/Challenge3/slurm3.out

# ensure access to all files
chmod +x /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh
chmod +x /LETHE/COURSES/hpc_course/valentina/Challenge3/redirect.sh

# TIMING OF BLAST COMMANDS
# execute the files individually whilst timing progress
# execute file using shell input 
# finish with & to run them parallelly

# Run with 1 thread
time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 10 1 &
time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 100 1 &
time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 1000 1 &
time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 10000 1 &
time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 100000 1 

# Run with 10 threads

time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 10 10 &
time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 100 10 &
time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 1000 10 &
time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 10000 10 &
time /LETHE/COURSES/hpc_course/valentina/Challenge3/challenge3.sh 100000 10 

# REDIRECT OUTPUT INTO DATA FILE
# delete data file it it exists 

srun /LETHE/COURSES/hpc_course/valentina/Challenge3/redirect.sh

