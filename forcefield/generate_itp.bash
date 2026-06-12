#!/bin/bash                                                                                                                                                           

                                                                                                                                                           
#source ~/miniconda3/etc/profile.d/conda.sh                                                                                                                           
conda activate polyply
#conda info | grep "active environment"                                                                                                                               

POLYMER="PQT12"
N=20

polyply gen_params -f /media/juhae/DATA/gromacs/setup/ffs/${POLYMER}.martini3.v1.4.ff /media/juhae/DATA/gromacs/setup/ffs/citations.bib -name ${POLYMER} -seq ${POLYM\
ER}:${N} -o ${POLYMER}_n${N}.itp
