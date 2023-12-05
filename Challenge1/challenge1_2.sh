#!/bin/bash
# author: Valentina
# date: 30_11_23

# create two directories 
# if directory exists, delete
# fasta 
rm -rf /LETHE/COURSES/hpc_course/valentina/fasta
mkdir /LETHE/COURSES/hpc_course/valentina/fasta

# gff 
rm -rf /LETHE/COURSES/hpc_course/valentina/gff
mkdir /LETHE/COURSES/hpc_course/valentina/gff


# define file URL
file=/LETHE/COURSES/hpc_course/valentina/Challenge1/valeslist.txt

# loop through all lines of file (valeslist), which includes the correct bacteria folder names 
while read -r line;
do 

    # grab corrrect directories and copy into fasta and gff
    cp /LETHE/COURSES/data/bac_genomes/refseq/bacteria/$line/*.fna.gz /LETHE/COURSES/hpc_course/valentina/fasta
    cp /LETHE/COURSES/data/bac_genomes/refseq/bacteria/$line/*.gff.gz /LETHE/COURSES/hpc_course/valentina/gff


done < $file
echo "copies complete"

# unzip all gz files from fasta
gzip -d /LETHE/COURSES/hpc_course/valentina/fasta/*.gz
echo "fasta unzip complete"

# unzip all gz files from fasta
gzip -d /LETHE/COURSES/hpc_course/valentina/gff/*.gz
echo "gff unzip complete"
