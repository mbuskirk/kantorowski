#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=10:00:00
#PBS -N 2-2cornerCl
#PBS -o 2-2cornerCl.out
#PBS -e 2-2cornerCl.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
conda activate psifour
psi4 stuff/2-2ndcornerCl.in stuff/2-2ndcornerCl.out
