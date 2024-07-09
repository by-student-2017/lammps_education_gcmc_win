
rem "ERROR: fix gcmc does currently not support full_energy option with molecule MC moves on more than 1 MPI process. (src/MC/fix_gcmc.cpp:697)"
set ncore=1

mkdir cfg

"C:\Program Files\Microsoft MPI\Bin\mpiexec.exe" -np %ncore% "C:\Program Files\LAMMPS 64-bit 22Dec2022-MSMPI\bin\lmp.exe" -in in.lmp
