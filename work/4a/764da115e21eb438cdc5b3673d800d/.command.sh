#!/bin/bash -ue
kneaddata --input1 sample_R1.fastq.gz --input2 sample_R2.fastq.gz -db /home/marta_fogt/PhD/kraken_ncyc_nf/phix_genome/phix_db --output /home/marta_fogt/PhD/kraken_ncyc_nf/results//kneaddata --bypass-trf
