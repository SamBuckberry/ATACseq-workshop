# ATACseq-workshop

In this workshop we will explore the major steps in ATAC-seq data analysis, including pre-analysis quality checks, alignment, peak calling, peak differential analysis, peak annotation and motif enrichment.  

More advanced analyses such as nucleosome positioning and transcription factor footprinting require an in-depth exploration and may be covered in future workshops. 

For the mapping step, there are methods using R included, however, better options likely exist outisde of R. Here I would suggest using HISAT2 for read mapping and picard for marking PCR duplicates. 

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

In this workshop, example datasets have beed obtained from Calderon et al. (2019) **Landscape of stimulation-responsive chromatin across diverse human immune cells** _Nature Genetics_. [https://www.nature.com/articles/s41588-019-0505-9](https://www.nature.com/articles/s41588-019-0505-9). See below for more information.  

===

### ATAC-seq pre-alignment
This section covers:  

- FASTQ file quality assessment  
- Read filtering and trimming for adapters and low-quality base calls  

**Note:** One thing to keep in mind with ATAC-seq read quality trimming is that you do not want to trim the 5' ends of the reads, as 5' end is used to determine the Tn5 insertion sites. 


Follow the workflow in the [atac-fastq-quality-control.Rmd](atac-fastq-quality-control.Rmd)

### ATAC-seq alignment
This section covers:  

- Build an alignment index from reference genome (FASTA files)  
- Align fastq files to reference index  
- Inspect alignment statistics  

Follow the workflow in the [map-atac-subread.Rmd](map-atac-subread.Rmd)

**Note:** HISAT2 and Bowtie2 are very good and fast aligners for ATAC-seq data, and have pre-compiled indexes available for many model species.  


### ATAC-seq post-alignment
- Inspect insert-size histogram  
- Inspect Tn5 enrichment at TSS  
- Remove mitochondrial and blacklist sequences
- Create Tn5 insertion-centered BED and bigwig files  
- Call peaks  
- Calculate fraction of reads in peaks
- Inspect normalised peak counts and compare samples  

Follow the workflow in the [post-map-atac.Rmd](post-map-atac.Rmd)

### Differential peak analysis
- Identify differential peaks  
- Annotate differential peaks  
- Test for enriched sequence motifs in differential peaks  

Follow the workflow in the [atac-differential-peak-testing.Rmd](atac-differential-peak-testing.Rmd)

### Data sources
All raw fastq data analysed in this workshop is from Calderon et al. (2019) **Landscape of stimulation-responsive chromatin across diverse human immune cells** _Nature Genetics_. [https://www.nature.com/articles/s41588-019-0505-9](https://www.nature.com/articles/s41588-019-0505-9). 

Data are available at https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE118165


**Reference genome and transcriptome (Ensembl GRCh38):**

Whole genome FASTA:  
http://ftp.ensembl.org/pub/release-104/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz

Chromosome 22 FASTA:  
http://ftp.ensembl.org/pub/release-104/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.chromosome.22.fa.gz





