+ACMAIQ- /bin/bash

echo +ACIAIw- type                 MPa                 gas+ACI- +AD4- info.txt

+ACM- gcmc (time, ps, integer)
set ps +AD0- 180

+ACM- temperature, K
set t+AD0-273.15

+ACM- pressure, MPa
for mpa in 2.5 5.0 15.0 30.0 50.0 70.0 100.0
do
  cp -r main +ACQAew-mpa+AH0-MPa
  cd +ACQAew-mpa+AH0-MPa
  echo +ACI-clear+ACI- +AD4- in.lmp1
  echo +ACI-variable temp1 index +ACQAew-t+AH0AIg- +AD4APg- in.lmp1
  echo +ACI-variable mpa   index +ACQAew-mpa+AH0AIg- +AD4APg- in.lmp1
  cat in.lmp1 in.lmp-linux +AD4- in.lmp
  sed -i +ACI-s/tgcmc/+ACQAew-ps+AH0-/+ACI- in.lmp
  lammps +ADw- in.lmp
  echo -n data.txt
  for ((i+AD0-390000+ADs-i+AD0APA-400000+ADs-i+AD0-i+-100))
  do
    find +ACI- +ACQAew-i+AH0- +ACI- log.lammps +AD4APg- data.txt
  done
  script -c 'gnuplot stats.gpl' stats.txt
  echo +ACIAIw-                      MPa                gas+ACI- +AD4- meam+AF8-and+AF8-std.txt
  find +ACI- Mean: +ACI- stats.txt +AD4APg- meam+AF8-and+AF8-std.txt
  find +ACI- Std Dev: +ACI- stats.txt +AD4APg- meam+AF8-and+AF8-std.txt
  find +ACI- Mean: +ACI- stats.txt +AD4APg- ../info.txt
  rm in.lmp1 in.lmp2 in.lmp+AF8-restart2
  cd ..
done
