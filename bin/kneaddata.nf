 /*
 * Kneaddata Phix and index removal 
*/
 
 process KNEADDATA {
    container 'ghcr.io/inuukin/kraken2_ncyc_dockers/kneaddata:0.12.0'

    publishDir "${params.results}/kneaddata", mode: 'copy'


    input:
    tuple val(sample_id), file(reads)

    script:
        if (params.paired == "TRUE")
        """
        kneaddata --input1 ${reads[0]} --input2 ${reads[1]} -db ${params.phix_genome} --output ${params.results}/kneaddata --bypass-trf
        """
        else
        """
        kneaddata --unpaired ${reads[0]} -db ${params.db_} -db ${params.phix_genome} --output ${params.results}/${sample_id}
        """

 }