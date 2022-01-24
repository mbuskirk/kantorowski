#!/bin/bash
#
#PBS -N proton
#PBS -l select=1:ncpus=10:mem=12gb
#PBS -l walltime=2:00:00
#PBS -q skystd
#PBS -j oe
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

cd $PBS_O_WORKDIR
module load anaconda3/5.1.0-gcc/8.3.1
source activate psifour
export PSI_SCRATCH=/scratch1/maxbuskirk
psi4 -i ./proton.in -o ./proton.out
