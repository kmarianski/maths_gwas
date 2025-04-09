#!/bin/bash
#SBATCH --job-name=munge_sumstats
#SBATCH --mem=8G
#SBATCH --partition=medium
#SBATCH --cpus-per-task=4
#SBATCH --output ./slurm-outputs/%J-%x.log

singularity exec --bind /home/kmarians,/mnt/shared \
/home/kmarians/scratch/private/ldsc/ldsc_latest.sif \
python /home/kmarians/scratch/private/ldsc/munge_sumstats.py \
--sumstats /home/kmarians/scratch/private/maths_gwas/metal.sumstats.ldsc.txt.gz \
--merge-alleles /home/kmarians/scratch/private/ldsc/w_hm3.snplist \
--chunksize 500000 \
--out /home/kmarians/scratch/private/maths_gwas/sumstats/MATHS