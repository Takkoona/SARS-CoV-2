#!/bin/bash

gp1="gp1.fasta"
gp1_trimmed="gp1_trimmed.fasta"

cdhit -i $gp1 -o $gp1_trimmed -c 0.999

gp2="gp2.fasta"
gp2_trimmed="gp2_trimmed.fasta"

cdhit -i $gp2 -o $gp2_trimmed -c 0.99

cat $gp1_trimmed $gp2_trimmed "wild.fasta" > "genomes.fasta"
