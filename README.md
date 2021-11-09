# ATACseq-workshop

In this workshop we will explore the major steps in ATAC-seq data analysis, including pre-analysis quality checks, alignment, peak calling, peak differential analysis, peak annotation and motif enrichment.  

More advanced analyses such as nucleosome positioning and transcription factor footprinting require an in-depth exploration and may be covered in future workshops. 

### Requirements

R version 4.1
Bioconductor version 3.14

### Getting setup

**RStudio:** Although not essential, this workshop is designed to be run from RStudio. Therefore it is reccomended that you install RStudio to your local computer, or RStudio server on a remote system.  

Within RStudio, you can then clone this GitHub repository to your computer. 

Otherwise you can clone this repository in a bash terminal:  
`git clone https://github.com/SamBuckberry/RNAseq-workshop.git`

**Installing required packages:** This repository contains an R script that will install all the required R packages for the workshop. Install these packages by running the following command in the R console:  
`source ./install-r-packages.R`

===

### ATAC-seq pre-alignment
This section covers:

- FASTQ file quality assessment
- Read filtering and trimming for adapters and low-quality base calls

### ATAC-seq alignment
This section covers:

- Build an alignment index from reference genome (FASTA files)
- Align fastq files to reference index
- Inspect alignment statistics
- Generate coverage files (bigwig)

### ATAC-seq post-alignment
- Inspect insert-size histogram
- Assess quality control across libraries
    - 




