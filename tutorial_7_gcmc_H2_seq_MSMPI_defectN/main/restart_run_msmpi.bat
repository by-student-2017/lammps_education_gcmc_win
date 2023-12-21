rem "Number of CPU"
set ncore=8

if exist cfg_restart (del /Q cfg_restart)

mkdir cfg_restart

rem "C:\Program Files\Microsoft MPI\Bin\mpiexec.exe"
mpiexec.exe -np %ncore% "C:\Program Files\LAMMPS 64-bit 22Dec2022-MSMPI\bin\lmp.exe" -in in.lmp


