# Simulation Inputs and Protocols for [Manuscript Title]

This repository contains simulation input files and protocols associated with the manuscript:

**[Thermally Controlled Polymorphism and Doping Gradients in Poly(dodecyl-quaterthiophene) (PQT) for Functionally Graded Organic Thermoelectrics]**  


The purpose of this repository is to provide the key files needed to reproduce the molecular dynamics simulation setup described in the manuscript.

## Repository Contents

This repository includes:

- GROMACS `.mdp` files used for energy minimization, equilibration
- Representative initial configuration files
- Example run scripts, where applicable

The repository is intended to document the simulation setup and parameters used in the study.

## Directory Structure

```text
.
├── mdp_files/
│   ├── minimization.mdp
│   └── npt_equilibration.mdp
│
├── forcefield/
├── initial_configurations/
│   └── 
├── final_configurations/
│
├── scripts/
│   └── example_run.sh
│
└── README.md
