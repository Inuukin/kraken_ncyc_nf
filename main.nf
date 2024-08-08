/*
 * Define the default parameters
*/

params.phix_genome  = "$baseDir/phix_genome/genome.fa"
params.reads        = "$baseDir/test_data/sample*fastq.gz"
params.results      = "$baseDir/results/"

/*
 *  KneadData processing
 */

process kneaddata_filtering {
    container 'ghcr.io/inuukin/kraken2_ncyc_dockers/kneaddata:0.12.0'

    input:
    path results

    script:
    """
    kneaddata --help > "${results}/kneaddata_help.txt"
    """
}




workflow {
    // reads_ch = Channel.fromFilePairs(params.reads)

    kneaddata_filtering(params.results)
}