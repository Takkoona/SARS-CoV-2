#!/bin/bash

input="aligned_cds.fasta"
outgroup=$(cat outgroup.txt)

raxmlHPC -p 1234 \
         -s $input \
         -n GTRGAMMA \
         -m GTRGAMMA \
         -o $outgroup
