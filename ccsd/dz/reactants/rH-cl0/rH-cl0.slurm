#!/bin/bash
#
#PBS -q skystd
#PBS -l select=1:ncpus=16:mem=62gb
#PBS -l walltime=60:00:00
#PBS -N rH-cl0
#PBS -o rH-cl0-.out
#PBS -e rH-cl0.err
#PBS -m abe
#PBS -M maxbuskirk@clemson.edu

module purge
eval "$(conda shell.bash hook)"
cd $PBS_O_WORKDIR
conda activate psifour
export PSI_SCRATCH=$TMPDIR
psi4 rH-cl0.in rH-cl0.out
