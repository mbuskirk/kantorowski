#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=33gb
#PBS -l walltime=20:00:00
#PBS -N 1OMe
#PBS -o 1OMe-.out
#PBS -e 1OMe.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
cd $PBS_O_WORKDIR
conda activate psifour
export PSI_SCRATCH=$TMPDIR

psi4 1OMe.in 1OMe.out
