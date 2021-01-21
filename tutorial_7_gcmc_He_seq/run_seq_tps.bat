echo # type                 MPa                 wt.%% > info.txt

rem "GCMC calculation time, ps"
set s=600

rem "temperature, K"
for %%t in (233.15 248.15 273.15 298.15 313.15 358.15) do (
  mkdir %%t
  cd %%t
  rem "pressure, MPa"
  for %%i in (2.5 5.0 15.0 30.0 50.0 70.0 100.0) do (
    mkdir %%i
    copy ..\main\* %%i
    cd %%i
    mkdir cfg
    echo clear > in.lmp1
    echo variable   temp1  index %%t >> in.lmp1
    echo variable   mpa    index %%i >> in.lmp1
    echo variable   tgcmc1 index %s% >> in.lmp1
    copy /b in.lmp1 + in.lmp2 in.lmp
    copy /b in.lmp1 + in.lmp_restart2 in.lmp_restart
    "C:\Program Files\LAMMPS 64-bit 18Jun2019\bin\lmp_serial.exe" -in in.lmp
    del in.lmp1 in.lmp2 in.lmp_restart2
    call ..\..\main\stats.bat
    find " Mean: " <meam_and_std.txt>> ..\info.txt
    find " Std Dev: " <meam_and_std.txt>> ..\info.txt
    cd ..
  )
  cd ..
)

gnuplot plot_p_vs_wt.gpl
