#!/bin/bash

cd ./Genome_tree

input="aligned_cds.fasta"
outgroup=$(cat outgroup.txt)

raxmlHPC -p 12345 \
         -s $input \
         -n GTRGAMMA \
         -m GTRGAMMA \
         -o $outgroup
