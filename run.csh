#! /bin/csh -f

echo "# type                 MPa                 gas" > info.txt

# gcmc (time, ps)
set ps = 30

# temperature, K
set t = 273.15

# pressure, MPa
foreach mpa (2.5 5.0 15.0 30.0 50.0 70.0 100.0)
  cp -r main ${mpa}MPa
  cd ${mpa}MPa
  echo "clear" > in.lmp1
  echo "variable temp1 index ${t}" >> in.lmp1
  echo "variable mpa   index ${mpa}" >> in.lmp1
  cat in.lmp1 in.lmp-linux > in.lmp
  sed -i "s/tgcmc/${ps}/" in.lmp
  lammps < in.lmp
  set i = 1
  @ i = $[ps} * 1900 + 38000
  set max = 1
  @ max = $[ps} * 2000 + 40000
  while (${i} <= ${max})
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


