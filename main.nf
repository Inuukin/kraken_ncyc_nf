nextflow.enable.dsl=2

/*
 * Define the default parameters
*/

params.phix_genome  = "$baseDir/phix_genome/phix_db"
params.reads        = "$baseDir/test_data/*_R{1,2}.fastq.gz"
params.results      = "$baseDir/results/"
params.paired       = "TRUE"

include { FASTQC as FASTQC_RAW} from './bin/fastqc.nf'
include { FASTQC as FASTQC_POST} from './bin/fastqc.nf'
include { KNEADDATA } from './bin/kneaddata.nf'


workflow {

    reads = Channel.fromFilePairs( params.reads )
    FASTQC_RAW(reads, "/pre_fastqc/")
    KNEADDATA(reads)
    FASTQC_POST( "$baseDir/results/kneaddata/*_R{1,2}.fastq.gz", "/post_fastqc/")

}
