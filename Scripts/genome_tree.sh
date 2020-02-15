#!/bin/bash

cd ./Genome_tree

input="raw.fasta"
output="aligned.fasta"

outgroup=$(cat outgroup.txt)
echo $outgroup

mafft $input > $output && \
raxmlHPC -p 12345 \
         -s $output \
         -n GTRGAMMA \
         -m GTRGAMMA \
         -o $outgroup
