#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 8mckantfreq
#PBS -o 8mckantfreq.out
#PBS -e 8mckantfreq.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
export PSI_SCRATCH = $TMPDIR

psi4 stuff/8mckantfrequ.in stuff/8mckantfrequ.out
