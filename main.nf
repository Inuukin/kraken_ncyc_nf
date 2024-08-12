nextflow.enable.dsl=2

/*
 * Define the default parameters
*/

params.phix_genome  = "$baseDir/phix_genome/phix_db"
params.reads        = "$baseDir/test_data/*_R{1,2}.fastq.gz"
params.results      = "$baseDir/results/"
params.paired       = "TRUE"

include { KNEADDATA } from './bin/kneaddata.nf'


 workflow {    

    reads = Channel.fromFilePairs( params.reads )

    KNEADDATA(reads)

}
