#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 7mckantfreq
#PBS -o 7mckantfreq.out
#PBS -e 7mckantfreq.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
export PSI_SCRATCH = $TMPDIR

psi4 stuff/7mckantfrequ.in stuff/7mckantfrequ.out
