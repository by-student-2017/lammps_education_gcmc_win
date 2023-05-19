echo # type                 MPa                 wt.%% > info.txt

rem "GCMC calculation time, ps"
set s=600

rem "Number of CPU"
set ncore=4

rem "temperature, K"
set t=273.15

set_mpich2.bat

rem "pressure, MPa"
for %%i in (2.5 5.0 15.0 30.0 50.0 70.0 100.0) do (
  mkdir %%i
  REM xcopy /y main %%i
  copy .\main\* %%i 
  cd %%i
  mkdir cfg
  echo clear > in.lmp1
  echo variable   temp1  index %t% >> in.lmp1
  echo variable   mpa    index %%i >> in.lmp1
  echo variable   tgcmc1 index %s% >> in.lmp1
  copy /b in.lmp1 + in.lmp2 in.lmp
  copy /b in.lmp1 + in.lmp_restart2 in.lmp_restart

  "C:\Program Files\MPICH2\bin\mpiexec.exe" -np %ncore% "C:\Program Files\LAMMPS 64-bit 28Mar2023-MPI\bin\lmp.exe" -in in.lmp

  del in.lmp1 in.lmp2 in.lmp_restart2
  call stats.bat
  find " Mean: " <meam_and_std.txt>> ..\info.txt
  find " Std Dev: " <meam_and_std.txt>> ..\info.txt
  cd ..
)

rem "gnuplot plot_p_vs_wt.gpl"
"C:\Program Files\gnuplot\bin\gnuplot.exe" plot_p_vs_wt.gpl
