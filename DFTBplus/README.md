------------------------------------------------------------------------
# Installation
## DFTB+ (version 23.1) (Edit: 27/Sep/2023)
 (ubuntu 22.04.1 LTS (64 bit) on windows11 (64 bit))

## Installation
(gfortran+ Netlib + OpenMPI) (wget command case) 
(http://www.dftbplus.org/about-dftb/)
・DFTB+ Stable (stable version 23.1)
0. sudo apt update
  sudo apt -y install gfortran g++ build-essential
  sudo apt -y install libopenmpi-dev libscalapack-openmpi-dev
  sudo apt -y install libopenblas-dev
  sudo apt -y install make cmake
  sudo apt -y install python3-numpy python3-setuptools
1. cd /mnt/d
2. wget https://github.com/dftbplus/dftbplus/releases/download/23.1/dftbplus-23.1.tar.xz
3. tar xvf dftbplus-23.1.tar.xz
4. cd dftbplus-23.1
5. ./utils/get_opt_externals ALL
6. vim config.cmake
----------(before)
option(WITH_OMP "Whether OpenMP thread parallisation should be enabled" TRUE)
option(WITH_MPI "Whether DFTB+ should support MPI-parallelism" FALSE)
option(WITH_TRANSPORT "Whether transport via libNEGF should be included." FALSE)
option(WITH_TBLITE "Whether xTB support should be included via tblite." FALSE)
option(WITH_SDFTD3 "Whether the s-dftd3 library should be included" FALSE)
option(WITH_PYTHON "Whether the Python components of DFTB+ should be tested and installed" FALSE)
----------
----------(after)
option(WITH_OMP "Whether OpenMP thread parallisation should be enabled" TRUE)
option(WITH_MPI "Whether DFTB+ should support MPI-parallelism" TRUE)
option(WITH_TRANSPORT "Whether transport via libNEGF should be included." TRUE)
option(WITH_TBLITE "Whether xTB support should be included via tblite." TRUE)
option(WITH_SDFTD3 "Whether the s-dftd3 library should be included" TRUE)
option(WITH_PYTHON "Whether the Python components of DFTB+ should be tested and installed" TRUE)
----------
7. mkdir _build
8. FC=mpif90 CC=gcc cmake -DLAPACK_LIBRARY="/usr/lib/x86_64-linux-gnu/openblas-pthread/libopenblas.a" -DBLAS_LIBRARY="/usr/lib/x86_64-linux-gnu/openblas-pthread/libblas.a" -DSCALAPACK_LIBRARY=scalapack-openmpi -DCMAKE_INSTALL_PREFIX=/mnt/d/dftbplus-23.1/dftb+ -Wno-dev -B _build ./
9. cmake --build _build -- -j
10. cmake -B _build -DTEST_MPI_PROCS=2 -DTEST_OMP_THREADS=2 ./
11. pushd _build; ctest; popd
12. cmake --install _build

## Environment settings
1. echo 'export PATH=$PATH:/mnt/d/dftbplus-23.1/dftb+/bin' >> ~/.bashrc
2. echo 'export PATH=$PATH:/mnt/d/dftbplus-23.1/dftb+/lib' >> ~/.bashrc
3. echo 'export PATH=$PATH:/mnt/d/dftbplus-23.1/dftb+/include' >> ~/.bashrc
4. echo 'export PATH=$PATH:/mnt/d/dftbplus-23.1/tools/misc' >> ~/.bashrc
5. bash

## Results of ctest
(12th Gen Intel(R) Core(TM) i7-12700)
----------
100% tests passed, 0 tests failed out of 123

Label Time Summary:
phonons/C-chain         =   1.22 sec*proc (1 test)
phonons/C-chain-proj    =   1.24 sec*proc (1 test)

Total Test time (real) = 1030.53 sec
/mnt/d/dftbplus-23.1
----------

## PC specifications used for DFTB+ v.23.1 calculations
---------- ----------- -----------
XPS 8950
OS: Microsoft Windows 11 Home 64 bit
BIOS: 1.14.0
CPU： 12th Gen Intel(R) Core(TM) i7-12700
Base Board：0R6PCT (A01)
Memory：32 GB
GPU: NVIDIA GeForce RTX3070
WSL2: VERSION="22.04.1 LTS (Jammy Jellyfish)"
---------- ----------- -----------
------------------------------------------------------------------------
## Usage (Commands)
1. export OMP_NUM_THREADS=8
2. mpirun -np 1 dftb+ < dftb_in.hsd | tee dftb_out.hsd
3. (open geo_end.xyz on Ovito, etc)
------------------------------------------------------------------------