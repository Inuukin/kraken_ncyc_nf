#!/bin/bash -ue
mkdir -p "/home/marta_fogt/PhD/kraken_ncyc_nf/results//pre_fastqc"
fastqc sample2_R1.fastq.gz sample2_R2.fastq.gz -o "/home/marta_fogt/PhD/kraken_ncyc_nf/results//pre_fastqc"
