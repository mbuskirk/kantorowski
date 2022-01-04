#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 6mckantfreq
#PBS -o 6mckantfreq.out
#PBS -e 6mckantfreq.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
export PSI_SCRATCH = $TMPDIR

psi4 stuff/6mckantfrequ.in stuff/6mckantfrequ.out
