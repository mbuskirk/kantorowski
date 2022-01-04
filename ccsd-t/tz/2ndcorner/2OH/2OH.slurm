#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=16:mem=62gb
#PBS -l walltime=60:00:00
#PBS -N 2OH
#PBS -o 2OH-.out
#PBS -e 2OH.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
cd $PBS_O_WORKDIR
conda activate psifour
export PSI_SCRATCH=$TMPDIR
psi4 2OH.in 2OH.out
