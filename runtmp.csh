#! /bin/csh -f

echo "# type                 MPa                 gas" > info.txt

# temperature
set t = XXXXX

# pressure, MPa
foreach mpa (YYYYY)
  cp -r main ${mpa}MPa
  cd ${mpa}MPa
  echo "clear" > in.lmp1
  echo "variable temp1 index ${mpa}" >> in.lmp1
  echo "variable mpa   index ${mpa}" >> in.lmp1
  cat in.lmp1 in.lmp2 > in.lmp
  cat in.lmp1 in.lmp_restart2 > in.lmp_restart
  mpirun -np 2 --allow-run-as-root lmp < in.lmp
  set i = 990000
  while (${i} =< 100000)
    find " ${i} " log.lammps >> data.txt
    @ i = i + 100
  end
  gnuplot stats.gpl > stats.txt
  echo "#                      MPa                 gas" > meam_and_std.txt
  find " Mean: " stats.txt >> meam_and_std.txt
  find " Std Dev: " stats.txt >> meam_and_std.txt
  find " Mean: " stats.txt >> ../info.txt
  rm in.lmp1 in.lmp2 in.lmp_restart2 data.txt stats.txt
  cd ..
end

#gnuplot plot_p_vs_wt.gpl


