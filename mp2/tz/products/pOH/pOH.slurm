#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N pOH
#PBS -o pOH-.out
#PBS -e pOH.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
cd $PBS_O_WORKDIR
export PSI_SCRATCH=$TMPDIR
psi4 pOH.in pOH.out
