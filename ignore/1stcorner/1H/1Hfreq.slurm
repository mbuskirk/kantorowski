#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 3mckantfreq
#PBS -o 3mckantfreq.out
#PBS -e 3mckantfreq.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
psi4 stuff/3mckantfrequ.in stuff/3mckantfrequ.out
