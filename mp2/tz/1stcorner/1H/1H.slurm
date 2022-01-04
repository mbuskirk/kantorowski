#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 1H
#PBS -o 1H-.out
#PBS -e 1H.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
cd $PBS_O_WORKDIR
set PSI_SCRATCH=$TMPDIR
psi4 1H.in 1H.out
