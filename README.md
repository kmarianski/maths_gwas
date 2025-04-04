# Mathematical Abilities GWAS EasyQC and METAL code

## Prerequisites

Before running EasyQC, ensure you have the following installed:
- [Singularity](https://sylabs.io/singularity/)
- SLURM (for job scheduling on HPC systems)

## Setup Instructions

1. **Clone and Navigate into the repository**
```bash
git clone https://github.com/kmarianski/maths_gwas.git
cd maths_gwas
```

2. **Create necessary directories**
```bash
mkdir -p notebooks slurm-outputs
# mkdir -p NCDS/EasyQC_check
```

3. **Pull the Singularity container**  
Use the following command to pull the EasyQC Singularity container:
```bash
singularity pull docker://pgcbioinfo/easyqc
```

4. **Download and extract the supplementary files**
```bash
wget https://homepages.uni-regensburg.de/~wit59712/easyqc/HRC/HRC.r1-1.GRCh37.wgs.mac5.sites.tab.cptid.maf001.gz

wget ftp://ngs.sanger.ac.uk/production/hrc/HRC.r1-1/HRC.r1-1.GRCh37.wgs.mac5.sites.tab.gz

gunzip HRC.r1-1.GRCh37.wgs.mac5.sites.tab.gz
gunzip HRC.r1-1.GRCh37.wgs.mac5.sites.tab.cptid.maf001.gzs/
```

5. **Start a Singularity container and run EasyQC**
This Singularity container starts in R
```bash
library(EasyQC)
ecf <- "~/scratch/private/maths_gwas/EasyQC_NCDS.ecf"
EasyQC(ecf)
```

6. **Run METAL**
Make sure to check all file paths and adjust parameters as needed
```bash
sbatch metal.sh
```