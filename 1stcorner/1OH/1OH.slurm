#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 1OH
#PBS -o 1OH-.out
#PBS -e 1OH.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
export PSI_SCRATCH = $TMPDIR

psi4 stuff/kantorowski/1stcorner/1OH/1OH.in stuff/kantorowski/1stcorner/1OH/1OH.out
