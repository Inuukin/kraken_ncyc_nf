#!/bin/bash -ue
mkdir -p "/home/marta_fogt/PhD/kraken_ncyc_nf/results//post_fastqc"
fastqc input.1 null -o "/home/marta_fogt/PhD/kraken_ncyc_nf/results//fastqc"
