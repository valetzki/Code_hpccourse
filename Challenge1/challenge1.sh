#!/bin/bash
# author: Valentina
# date: 29_11_23

# create two directories after checking if directories exist
if ! [ -d /LETHE/COURSES/hpc_course/valentina/fasta/ ]
then
mkdir /LETHE/COURSES/hpc_course/valentina/fasta/
fi

# create two directories
#check if directories exist
if ! [ -d /LETHE/COURSES/hpc_course/valentina/gff/ ]
then
mkdir /LETHE/COURSES/hpc_course/valentina/gff/
fi

# define file URL and counting parameter k
file=/LETHE/COURSES/hpc_course/valentina/Challenge1/valeslist.txt
k=1

while read -r line;
do 

# unzip all gz files from bacvale
gunzip /LETHE/COURSES/hpc_course/valentina/bacvale/$line/*.gz

# grab corrrect directories and copy into directories
cp -r /LETHE/COURSES/hpc_course/valentina/bacvale/. /LETHE/COURSES/hpc_course/valentina/fasta/
cp -r /LETHE/COURSES/hpc_course/valentina/bacvale/. /LETHE/COURSES/hpc_course/valentina/gff/

# track progress
echo "$k done"
k=$((k+1))

done < $file