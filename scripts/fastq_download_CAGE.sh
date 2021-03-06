#!/bin/bash

#SBATCH -n 8                        # number of cores
#SBATCH -t 0-12:00                  # wall time (D-HH:MM)
##SBATCH -A rraborn                # Account hours will be pulled from (commented out with double # in front)
#SBATCH -o slurm.%j.out             # STDOUT (%j = JobId)
#SBATCH -e slurm.%j.err             # STDERR (%j = JobId)
#SBATCH --mail-type=ALL             # Send a notification

module load sra-toolkit

fastqDir=/home/rraborn/DpCAGE_v4_0/Daphnia_CAGE_PA42_v4_0

mkdir fastq

echo "Starting download"

cd $fastqDir/fastq

fastq-dump SRR3356112
fastq-dump SRR3356113
fastq-dump SRR3356114
fastq-dump SRR3356115
fastq-dump SRR3356116
fastq-dump SRR3356117
fastq-dump SRR3356118
fastq-dump SRR3356119

echo "Download complete"
