
### install Bioconductor packages
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(version = "3.14")

bioc_packages <- c('QuasR', 'Rsubread', 'GenomicRanges', 'GenomicAlignments',
                   'GenomicFeatures', 'Rsamtools', 'rtracklayer', 'Rfastp',
                   'edgeR', 'limma', 'ggbio',
                   'TxDb.Hsapiens.UCSC.hg38.knownGene',
                   'wiggleplotr', 'gprofiler2', 'biomaRt', 'ensembldb',
                   'EnsDb.Hsapiens.v86', 'basilisk', 'MACSr',
                   'BSgenome.Hsapiens.UCSC.hg38', 'monaLisa', 'JASPAR2020',
                   'TFBSTools')

BiocManager::install(bioc_packages)

### Install from CRAN using bioc to ensure version compatability
cran_package <-  c('stringr', 'magrittr', 'DT', 'markdown', 'mime',
                   'rmarkdown', 'tinytex', 'knitr', 'pheatmap', 'tidyr',
                   'ggplot2', 'ggrepel', 'UpSetR', 'cowplot', 'dplyr')

BiocManager::install(pkgs = cran_package, site_repository = "CRAN")


