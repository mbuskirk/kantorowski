#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 3-2corner
#PBS -o 3-2corner.out
#PBS -e 3-2corner.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
export PSI_SCRATCH=$TMPDIR
psi4 stuff/kantorowski/2ndcorner/2H/3-2ndcorner.in stuff/kantorowski/2ndcorner/2H/3-2ndcorner.out
