#!/bin/bash
#
#PBS -N rOMe
#PBS -l select=1:ncpus=12:mem=62gb
#PBS -l walltime=60:00:00
#PBS -q skylm
#PBS -j oe
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

cd $PBS_O_WORKDIR
module load anaconda3/5.1.0-gcc/8.3.1
source activate psifour
export PSI_SCRATCH=/scratch1/maxbuskirk
psi4 -i ./rOMe.in -o ./rOMe.out
