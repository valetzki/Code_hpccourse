#!/bin/bash
# author: Valentina
# date: 30_11_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=1
#SBATCH -e /LETHE/COURSES/hpc_course/valentina/Challenge3/redirect.out
#SBATCH -o /LETHE/COURSES/hpc_course/valentina/Challenge3/redirect.out

# ensure access
chmod +x /LETHE/COURSES/hpc_course/aliscale_speeds/blast_speeds_valentina.txt

# output file in group folder

rm /LETHE/COURSES/hpc_course/aliscale_speeds/blast_speeds_valentina.txt
output=/LETHE/COURSES/hpc_course/aliscale_speeds/blast_speeds_valentina.txt

# output file in my folder

#rm /LETHE/COURSES/hpc_course/valentina/Challenge3/data.txt
#output=/LETHE/COURSES/hpc_course/valentina/Challenge3/data.txt

# define input file 

input=/LETHE/COURSES/hpc_course/valentina/Challenge3/slurm3.out

# define files for variables

p=/LETHE/COURSES/hpc_course/valentina/Challenge3/p.txt
tc=/LETHE/COURSES/hpc_course/valentina/Challenge3/tc.txt
db=/LETHE/COURSES/hpc_course/valentina/Challenge3/db.txt
t=/LETHE/COURSES/hpc_course/valentina/Challenge3/t.txt

# assign correct values into files

grep -w blast $input | tr -d [:blank:] | tr , . > $p
grep -w threads $input | tr -d [:blank:] | tr -d [:alpha:] | tr , . > $tc
grep -w database $input | tr -d [:blank:] | tr -d [:alpha:] | tr , . > $db
grep -w real $input | tr -d [:blank:] | tr -d [:alpha:] | tr , . > $t

# merge documents into output file by line, separated by blank

paste -d " " $p $db $tc $t > /LETHE/COURSES/hpc_course/valentina/Challenge3/data$1.txt



