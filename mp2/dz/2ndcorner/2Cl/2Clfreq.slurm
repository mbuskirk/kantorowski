#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 2Clfreq.in
#PBS -o 2Clfreq-.out
#PBS -e 2Clfreq.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
cd $PBS_O_WORKDIR
conda activate psifour
psi4 2Clfreq.in 2Clfreq.out
