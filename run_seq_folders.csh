#!/bin/csh -f

#set lammps adress
set lammps_exe = ${HOME}/lammps-22Dec2022/src/lmp_mpi

# Number of CPUs
set ncore = 10

# For openmpi error (segmentation fault on GCMC)
setenv OMP_NUM_THREADS=1
#export OMP_NUM_THREADS=1

# gcmc (time, ps)
set ps = 60

# folders
foreach fd ( tutorial_7_gcmc_H2_seq_MSMPI_defectB \
             tutorial_7_gcmc_H2_seq_MSMPI_defectN \
             tutorial_7_gcmc_H2_seq_MSMPI_nodefect )
  cd ${fd}

  # temperature, K
  foreach t ( 423.15 298.15 233.15 )
    mkdir ${t}
    cd ${t}
    echo "# type                 MPa                 gas" > info.txt
    
    # pressure, MPa
    foreach mpa ( 100.0 70.0 50.0 30.0 15.0 5.0 2.5 )
      cp -r ./../main ${mpa}MPa
      cd ${mpa}MPa
      mkdir cfg
      echo "clear" > in.lmp1
      echo "variable temp1 index ${t}" >> in.lmp1
      echo "variable mpa   index ${mpa}" >> in.lmp1
      cat in.lmp1 in.lmp-linux > in.lmp
      sed -i "s/tgcmc/${ps}/" in.lmp
      #
      #mpirun -np ${ncore} ${lammps_exe} -in in.lmp
      #
      #@ i = ( ${ps} + 1 ) * 1900 
      #@ max = ( ${ps} + 1 ) * 2000
      @ i = ( 19 * 20000 )
      @ max = ( ${ps} * 20000 ) + 80000
      echo ${i},${max}
      echo -n > data.txt
      while ( ${i} <= ${max} )
        grep " ${i} " log.lammps >> data.txt
        #echo ${i}
        @ i = ${i} + 100
      end
      script -c 'gnuplot stats.gpl' stats.txt
      echo "#                      MPa                gas" > meam_and_std.txt
      grep " Mean: " stats.txt >> meam_and_std.txt
      grep " Std Dev: " stats.txt >> meam_and_std.txt
      echo "---------- ---------- ----------" >> ../info.txt
      grep " Mean: " stats.txt >> ../info.txt
      grep " Std Dev: " stats.txt >> ../info.txt
      rm in.lmp1 in.lmp2 in.lmp_restart2
      cd ..
    end
    cd ..
  end
  cd ..
end

#gnuplot plot_p_vs_wt.gpl
