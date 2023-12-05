#!/bin/bash
# author: Valentina
# date: 30_11_23

# if directory exists, delete (doesn't work at the moment, please do manually)
# create directory 

# gff 
    rm -rf /LETHE/COURSES/hpc_course/valentina/Challenge1_Valentina/gff
    mkdir /LETHE/COURSES/hpc_course/valentina/Challenge1_Valentina/gff


# define path to file
file=/LETHE/COURSES/hpc_course/valentina/Challenge1_Valentina/valeslist.txt

# loop through all lines of file (valeslist), which includes the correct bacteria folder names 
while read -r line;
do 

    # grab corrrect directories and copy into fasta and gff
    cp /LETHE/COURSES/data/bac_genomes/refseq/bacteria/$line/*.gff.gz /LETHE/COURSES/hpc_course/valentina/Challenge1_Valentina/gff


done < $file

# track progress
echo "gff copies complete"

# unzip all gz files from fasta
gzip -d /LETHE/COURSES/hpc_course/valentina/Challenge1_Valentina/gff/*.gz
# track progress
echo "gff unzip complete"
