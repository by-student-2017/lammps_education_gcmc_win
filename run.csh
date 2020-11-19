#! /bin/csh -f

echo "# type                 MPa                 gas" > info.txt

# gcmc (time, ps)
set ps = 189

# temperature, K
set t = 273.15

# pressure, MPa
foreach mpa ( 2.5 5.0 15.0 30.0 50.0 70.0 100.0 )
  cp -r main ${mpa}MPa
  cd ${mpa}MPa
  echo "clear" > in.lmp1
  echo "variable temp1 index ${t}" >> in.lmp1
  echo "variable mpa   index ${mpa}" >> in.lmp1
  cat in.lmp1 in.lmp-linux > in.lmp
  sed -i "s/tgcmc/${ps}/" in.lmp
  lammps < in.lmp
  @ i = ( ${ps} + 1 ) * 1900 
  @ max = ( ${ps} + 1 ) * 2000
  echo ${i},${max}
  echo -n > data.txt
  while ( ${i} <= ${max} )
    grep " ${i} " log.lammps >> data.txt
    echo ${i}
    @ i = ${i} + 100
  end
  script -c 'gnuplot stats.gpl' stats.txt
  echo "#                      MPa                gas" > meam_and_std.txt
  grep " Mean: " stats.txt >> meam_and_std.txt
  grep " Std Dev: " stats.txt >> meam_and_std.txt
  grep " Mean: " stats.txt >> ../info.txt
  rm in.lmp1 in.lmp2 in.lmp_restart2
  cd ..
end

#gnuplot plot_p_vs_wt.gpl


