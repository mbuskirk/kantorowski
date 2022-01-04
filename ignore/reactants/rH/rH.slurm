#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N rH
#PBS -o rH-.out
#PBS -e rH.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
export PSI_SCRATCH=$TMPDIR
psi4 stuff/kantorowski/reactants/rH/rH.in stuff/kantorowski/reactants/rH/rH.out
