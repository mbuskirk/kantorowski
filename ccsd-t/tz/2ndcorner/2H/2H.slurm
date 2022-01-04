#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=16:mem=62gb
#PBS -l walltime=60:00:00
#PBS -N 2H
#PBS -o 2H-.out
#PBS -e 2H.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
cd $PBS_O_WORKDIR
conda activate psifour
export PSI_SCRATCH=$TMPDIR
psi4 2H.in 2H.out
