#!/bin/bash

cd ./Genome_tree

input="genomes.fasta"
output="aligned.fasta"

mafft $input > $output
