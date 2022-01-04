#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 8mckant
#PBS -o 8mckant.out
#PBS -e 8mckant.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
export PSI_SCRATCH = $TMPDIR

psi4 stuff/8mckantoronald.in stuff/8mckantoronald.out
