#!/bin/bash

input="all.fasta"
output="aligned.fasta"

mafft $input > $output
