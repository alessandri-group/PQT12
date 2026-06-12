#!/bin/bash                                                                                                                                                           

                                                                                                                                                           
#source ~/miniconda3/etc/profile.d/conda.sh                                                                                                                           
conda activate polyply
#conda info | grep "active environment"                                                                                                                               

POLYMER="PQT12"
N=20

polyply gen_params -f ./${POLYMER}.martini3.ff ./citations.bib -name ${POLYMER} -seq ${POLYMER}:${N} -o ${POLYMER}_n${N}.itp
