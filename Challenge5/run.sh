#!/bin/bash
# author: Valentina
# date: 07_12_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=3
#SBATCH -e /LETHE/COURSES/hpc_course/valentina/Challenge5/run.out
#SBATCH -o /LETHE/COURSES/hpc_course/valentina/Challenge5/run.out

# grant access
chmod +x /LETHE/COURSES/hpc_course/valentina/Challenge5/gcatcont.sh
chmod +x /LETHE/COURSES/hpc_course/valentina/Challenge5/numgenes.sh
chmod +x /LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.sh

# execute the files individually whilst timing progress
# put first file execution in background with & to run them parallelly
#srun /LETHE/COURSES/hpc_course/valentina/Challenge5/gcatcont.sh &
#bash /LETHE/COURSES/hpc_course/valentina/Challenge5/numgenes.sh &
#srun /LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.sh

# define data document paths
gcat=/LETHE/COURSES/hpc_course/valentina/Challenge5/gcatcont.txt
ngenes=/LETHE/COURSES/hpc_course/valentina/Challenge5/numgenes.txt
tax=/LETHE/COURSES/hpc_course/valentina/Challenge5/taxonomy.txt

# merge documents into data file by line, separated by blank
paste -d " " $gcat $ngenes $tax > /LETHE/COURSES/hpc_course/valentina/Challenge5/data.txt