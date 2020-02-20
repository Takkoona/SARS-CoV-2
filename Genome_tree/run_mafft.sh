#!/bin/bash

input="genomes.fasta"
output="aligned.fasta"

mafft $input > $output
