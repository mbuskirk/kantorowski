#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 2-energy
#PBS -o 2-energy.out
#PBS -e 2-energy.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
psi4 stuff/2ndenergy.in stuff/2ndenergy.out
