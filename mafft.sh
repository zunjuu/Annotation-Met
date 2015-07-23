#!/bin/sh
#SBATCH --job-name=Clustal
#SBATCH --qos=npod
#SBATCH --time=168:00:00
#SBATCH --output=Clustal_info.txt
#SBATCH --error=Clustal_error.txt
#SBATCH --mail-user=
#SBATCH --mail-type=ALL


module load mafft/7.149

mafft --parttree genes.pep > aligned-kegg-protein.fa
