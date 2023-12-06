#!/bin/sh
#Wir wollen verschiedene Datenbanken mit Hilfe von 1 oder 10 cores mit unserer Query sequenz vergleichen

#Die Datenbank makeblastdb -in 10.fa -dbtype nucl

#Setting variables
    core=$1 
    database=$2
#Path festlegen
    pathdatabase=/LETHE/COURSES/hpc_course/Cecilia/Aliscale/$2.fa
#safing the current date into a variable
    date1=$(date +%s%N)
    #date1=$(date +%s%N) würde es in Nanosekunden angeben
#blasting the sequence
    blastn -query 1.fa -num_threads $core -db $pathdatabase
#safing the current time for a second time and putting it into a variable
    date2=$(date +%s%N)

#calculating the time difference of date1 and date2
    timediff=$(expr $date2 - $date1)
    timediff_ms=$(expr $timediff / 1000000)
#expr shows that there is a calculation to do
    echo "time passed"
    echo "$timediff_ms" 

echo "blast, $core, $database, $timediff_ms"

#Code für Graph: python ./plot_speeds.py cecilia_ergebnisse.txt Plot_cecilia.png

