if exist cfg_restart (del /Q cfg_restart)

mkdir cfg_restart

"C:\Program Files\LAMMPS 64-bit 18Jun2019\bin\lmp_serial.exe" -in in.lmp_restart

