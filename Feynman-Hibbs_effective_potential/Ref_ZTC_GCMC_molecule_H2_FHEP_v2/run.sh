#!/bin/bash

NCPU=8
lammps_adress=/mnt/d/lammps
#lammps_adress=$HOME/lammps

mkdir cfg

export OMP_NUM_THREADS=${NCPU}

# non-OPENMP package installation case
#${lammps_adress}/src/lmp_serial -in in.lmp

# OPENMP package installation case
${lammps_adress}/src/lmp_serial -sf omp -pk omp ${NCPU} -in in.lmp

