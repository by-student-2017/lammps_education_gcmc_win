#! /bin/csh -f

echo "# type                 MPa                 gas" > info.txt

# gcmc (time, ps, integer)
set ps = ZZZZZ

# temperature, K
set t = XXXXX

# pressure, MPa
foreach mpa ( YYYYY )
  cp -r main ${mpa}MPa
  cd ${mpa}MPa
  echo "clear" > in.lmp1
  echo "variable temp1 index ${t}" >> in.lmp1
  echo "variable mpa   index ${mpa}" >> in.lmp1
  cat in.lmp1 in.lmp-linux > in.lmp
  sed -i "s/tgcmc/${ps}/" in.lmp
  lammps < in.lmp
  @ i = ( ${ps} + 20 ) * 1900
  @ max = ( ${ps} + 20 ) * 2000
  echo ${i},${max}
  while ( ${i} <= ${max} )
    grep " ${i} " log.lammps >> data.txt
    echo ${i}
    @ i = ${i} + 100
  end
  gnuplot stats.gpl > stats.txt
  echo "#                      MPa                 gas" > meam_and_std.txt
  grep " Mean: " stats.txt >> meam_and_std.txt
  grep " Std Dev: " stats.txt >> meam_and_std.txt
  grep " Mean: " stats.txt >> ../info.txt
  rm in.lmp1 in.lmp2 in.lmp_restart2 data.txt stats.txt
  cd ..
end

#gnuplot plot_p_vs_wt.gpl


