#!/bin/bash
#SBATCH --job-name=LDSC_rg
#SBATCH --cpus-per-task=1
#SBATCH --mem=8GB
#SBATCH --partition=medium
#SBATCH --output ./slurm-outputs/%J-%x.log

singularity exec --bind /home/kmarians,/mnt/shared \
~/scratch/private/ldsc/ldsc_latest.sif \
python /home/kmarians/scratch/private/ldsc/ldsc.py \
--rg \
/home/kmarians/scratch/private/maths_gwas/sumstats/MATHS.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/ADHD.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/EA.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/Bellenguez.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/non_word_reading_Elsing_2022.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/non_word_repetition_Elsing_2022.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/phoneme_awareness_Elsing_2022.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/spelling_Elsing_2022.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/word_reading_Elsing_2022.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/ENIGMA3_mixed_se_wo_Mean_Full_Thickness.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/ENIGMA3_mixed_se_wo_Mean_Full_Thickness_noGC.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/ENIGMA3_mixed_se_wo_Mean_Full_SurfArea.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/ENIGMA3_mixed_se_wo_Mean_Full_SurfArea_noGC.sumstats.gz,\
/home/kmarians/projects/uosa/Silvia_Paracchini/GWAS_maths_downstream_analysis/sumstats/23andMe.sumstats.gz \
--ref-ld-chr /home/kmarians/scratch/private/ldsc/eur_w_ld_chr/ \
--w-ld-chr /home/kmarians/scratch/private/ldsc/weights_hm3_no_hla/weights. \
--out /home/kmarians/scratch/private/maths_gwas/rg_results/maths_rg