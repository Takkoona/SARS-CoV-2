#!/bin/bash

input="raw.fasta"
output="aligned.fasta"

cd ./Genome_tree

muscle -in $input -out $output && \
raxmlHPC -p 12345 \
         -s $output \
         -n GTRGAMMA \
         -m GTRGAMMA \
         -o $(cat outgroup.txt)
