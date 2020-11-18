for /l %%i in (319000,100,320000) do (
  find " %%i " <log.lammps>> data.txt
)

gnuplot stats.gpl > stats.txt

echo #                      MPa                 N2 > meam_and_std.txt
find " Mean: " <stats.txt>> meam_and_std.txt
find " Std Dev: " <stats.txt>> meam_and_std.txt

del data.txt stats.txt