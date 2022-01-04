#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=15:mem=32gb
#PBS -l walltime=48:00:00
#PBS -N 5mckant
#PBS -o 5mckant.out
#PBS -e 5mckant.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
psi4 stuff/5mckantoronald.in stuff/5mckantoronald.out
