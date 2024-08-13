/*
 * FastQC
 */

process FASTQC {
    container 'biocontainers/fastqc:v0.11.9_cv8'

    publishDir "${params.results}/${output_dir}", mode: 'copy'

    input:
    tuple val(sample_id), file(reads)

    input:
    path output_dir

    script:
    """
    mkdir -p "${params.results}/${output_dir}"
    fastqc ${reads[0]} ${reads[1]} -o "${params.results}/${output_dir}"
    """ 

 }
