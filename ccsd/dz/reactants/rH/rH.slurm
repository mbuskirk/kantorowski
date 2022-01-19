#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=16:mem=62gb
#PBS -l walltime=60:00:00
#PBS -N rH
#PBS -o rH-.out
#PBS -e rH.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
cd $PBS_O_WORKDIR
conda activate psifour
export PSI_SCRATCH=/scratch1/maxbuskirk
psi4 rH.in rH.out
