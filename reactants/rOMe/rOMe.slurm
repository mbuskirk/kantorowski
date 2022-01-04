#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N rOMe
#PBS -o rOMe-.out
#PBS -e rOMe.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
export PSI_SCRATCH=$TMPDIR
psi4 stuff/kantorowski/reactants/rOMe/rOMe.in stuff/kantorowski/reactants/rOMe/rOMe.out
