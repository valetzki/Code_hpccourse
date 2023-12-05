#!/bin/bash
# author: Valentina
# date: 05_12_23

#SBATCH --job-name=valentina
#SBATCH --mem=5G
#SBATCH --cpus-per-task=1
#SBATCH -e /LETHE/COURSES/hpc_course/valentina/Challenge4/runfile.out
#SBATCH -o /LETHE/COURSES/hpc_course/valentina/Challenge4/runfile.out

# specify paths for shorter code
rm -r /LETHE/COURSES/hpc_course/valentina/Challenge4/dockerfiles
mkdir /LETHE/COURSES/hpc_course/valentina/Challenge4/dockerfiles
dir=/LETHE/COURSES/hpc_course/valentina/Challenge4/dockerfiles

# put dna seq file in folder
cp /LETHE/COURSES/data/AliScale_data/100000.fa $dir
cp /LETHE/COURSES/data/AliScale_data/1.fa $dir

# create protein file
docker run --rm -v $dir:/data pegi3s/emboss transeq /data/100000.fa /data/100000.pep

# create database from protein file
docker run --rm -v $dir:/data pegi3s/diamond makedb --in /data/100000.pep -d /data/100000

# blast fasta file against protein database
docker run --rm -v $dir:/data pegi3s/diamond blastx -d /data/100000.dmnd -q /data/1.fa -o /data/out.txt