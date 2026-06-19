#!/bin/bash 

source $your_conda_environment
conda activate polyply 
conda info | grep " active environment"
source $your_gromacs_environment

POLYMER="PQT12"
N=20
replica="A"

#initialization
if [ -f "system_${POLYMER}_melt_n${N}.top" ] ; then
  polyply gen_coords -p system_${POLYMER}_melt_n${N}.top -o tmp_${POLYMER}_melt_n${N}_${replica}.gro -dens 600 -name ${POLYMER}
else
  echo "ERROR!! File system_${POLYMER}_melt_n${N}.top NOT found. Exiting..."
  exit
fi

# Min and eq                                                                                                                                               
if [ ! -f "${POLYMER}_melt_n${N}_${replica}.gro" ] ; then
  gmx grompp -normvsbds -p system_${POLYMER}_melt_n${N}.top -c starting_packing.gro -f ./mdp_files/minimization.mdp -o 1-min
  gmx mdrun -v -deffnm 1-min -nt 2                                                                                                                      
  gmx grompp -normvsbds -p system_${POLYMER}_melt_n${N}.top -c 1-min.gro -f ./mdp_files/npt_equilibration.mdp -o 2-NPT -maxwarn 2
  gmx mdrun -v -deffnm 2-NPT -nt 2
fi

mv 2-NPT.gro ${POLYMER}_melt_n${N}_${replica}.gro
echo 0 | gmx trjconv -f 2-NPT.xtc -o 2-NPT-whole.xtc -pbc whole -s 2-NPT.tpr
rm tmp_${POLYMER}_melt_n${N}_${replica}.gro 1-min.??? 2-NPT.??? mdout.mdp 2-NPT_prev.cpt \#*
