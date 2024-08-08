/*
 *  KneadData processing
 */

process kneaddata_filtering {
    container 'ghcr.io/inuukin/kraken2_ncyc_dockers/kneaddata:0.12.0'

    script:
    """
    kneaddata --help
    """
}