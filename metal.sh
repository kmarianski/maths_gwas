#!/bin/bash
#SBATCH --job-name=metal
#SBATCH --mem=10G
#SBATCH --output ./slurm-outputs/%J-%x.log

/home/kmarians/projects/uosa/Silvia_Paracchini/Maths_GWAS_RANDOM_METAL_KRZYS_OLD/RANDOM_METAL/explodecomputer-random-metal-c79bc9d/executables/metal metal_all.txt