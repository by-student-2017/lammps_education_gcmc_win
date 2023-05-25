for /l %%i in (99000,100,100000) do (
  find " %%i " <log.lammps>> data.txt
)

"C:\Program Files\gnuplot\bin\gnuplot.exe" stats.gpl > stats.txt

echo #                      MPa                 H2 > meam_and_std.txt
find " Mean: " <stats.txt>> meam_and_std.txt
find " Std Dev: " <stats.txt>> meam_and_std.txt

del data.txt stats.txt