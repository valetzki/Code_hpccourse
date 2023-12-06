#!/bin/bash
# author: Valentina
# date: 06_12_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=3
#SBATCH -e /LETHE/COURSES/hpc_course/valentina/Challenge4/run.out
#SBATCH -o /LETHE/COURSES/hpc_course/valentina/Challenge4/run.out

# execute the files individually whilst timing progress
# put first file execution in background with & to run them parallelly
time /LETHE/COURSES/hpc_course/valentina/Challenge5/gcatcont.sh &
time /LETHE/COURSES/hpc_course/valentina/Challenge5/numgenes.sh &
#time /LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.sh

# define data document paths
gcat=/LETHE/COURSES/hpc_course/valentina/Challenge5/gcatcont.txt
ngenes=/LETHE/COURSES/hpc_course/valentina/Challenge5/numgenes.txt
#tax=/LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.txt

# merge documents into data file by line, separated by blank
paste -d " " $gcat $ngenes $tax > /LETHE/COURSES/hpc_course/valentina/Challenge5/data.txt‚