+ACMAIQ- /bin/bash

echo +ACIAIw- type                 MPa                 gas+ACI- +AD4- info.txt

+ACM- temperature, K
set t+AD0-273.15

+ACM- pressure, MPa
for mpa in 2.5 5.0 15.0 30.0 50.0 70.0 100.0
do
  cp -r main +ACQAew-mpa+AH0-MPa
  cd +ACQAew-mpa+AH0-MPa
  echo +ACI-clear+ACI- +AD4- in.lmp1
  echo +ACI-variable temp1 index +ACQAew-mpa+AH0AIg- +AD4APg- in.lmp1
  echo +ACI-variable mpa   index +ACQAew-mpa+AH0AIg- +AD4APg- in.lmp1
  cat in.lmp1 in.lmp2 +AD4- in.lmp
  cat in.lmp1 in.lmp+AF8-restart2 +AD4- in.lmp+AF8-restart
  lmp+AF8-stable +ADw- in.lmp
  for ((i+AD0-319000+ADs-i+AD0APA-320000+ADs-i+AD0-i+-100))
  do
    find +ACI- +ACQAew-i+AH0- +ACI- log.lammps +AD4APg- data.txt
  done
  gnuplot stats.gpl +AD4- stats.txt
  echo +ACIAIw-                      MPa                 gas+ACI- +AD4- meam+AF8-and+AF8-std.txt
  find +ACI- Mean: +ACI- stats.txt +AD4APg- meam+AF8-and+AF8-std.txt
  find +ACI- Std Dev: +ACI- stats.txt +AD4APg- meam+AF8-and+AF8-std.txt
  find +ACI- Mean: +ACI- stats.txt +AD4APg- ../info.txt
  rm in.lmp1 in.lmp2 in.lmp+AF8-restart2 data.txt stats.txt
  cd ..
done
