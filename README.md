# Simulation Inputs and Protocols for PQT12

Simulation input files and protocols associated with the manuscript:

J.-H. Chen, T. Ma, J. Park, R. Alessandri, B. X. Dong, Y. Zhao, N. Shan, C. J. Takacs, J. J. de Pablo, S. N. Patel. "Thermally Controlled Polymorphism and Doping Gradients in Poly(dodecyl-quaterthiophene) (PQT) for Functionally Graded Organic Thermoelectrics", *ChemRxiv* **2026**, [10.26434/chemrxiv.15004847](https://doi.org/10.26434/chemrxiv.15004847/v1).

The purpose of this repository is to document and provide the key files needed to reproduce the
coarse-grained molecular dynamics simulation setup described in the manuscript.

## Repository Contents

- **`forcefield/`** — Martini 3 coarse-grained force field for PQT12 and the corresponding
  polyply topology (degree of polymerization = 20).
- **`mdp_files/`** — GROMACS run-parameter files for energy minimization and NPT equilibration / annealing.
- **`giwaxs_sim/`** — Notebook and structures used to compute the simulated GIWAXS patterns.
- **`example_run.sh`** — Example end-to-end script (build coordinates → minimize → equilibrate).

## Directory Structure

```text
.
├── forcefield/
│   ├── PQT12.martini3.ff       # Martini 3 force field definition (polyply input)
│   ├── PQT12_n20.itp           # Generated topology (DP = 20)
│   ├── generate_itp.bash       # polyply gen_params wrapper
│   └── citations.bib           # references used by polyply gen_params
│
├── mdp_files/
│   ├── minimization.mdp        # energy minimization
│   └── npt_equilibration.mdp   # NPT equilibration / annealing
│
├── giwaxs_sim/
│   ├── GIWAXS_sim_Final.ipynb  # simulated GIWAXS via structure factor S(G)
│   ├── Quick_Guide_for_GIWAXS_sim.pdf
│   └── pdb/                     # structures behind the SI GIWAXS figures (S5, S8, S9)
│
├── example_run.sh              # example build + minimization + equilibration workflow
└── README.md
```

## Software

The simulation setup and analysis was built and run with:

- [GROMACS](https://www.gromacs.org/) 2022.4
- [polyply](https://github.com/marrink-lab/polyply_1.0) (topology and coordinate generation)
- [MDAnalysis](https://www.mdanalysis.org/) (GIWAXS structure-factor analysis)

## Citation

If you use the files or protocols in this repository, please cite the manuscript:

```bibtex
@article{Chen2026PQT,
  author  = {Jie-Hao Chen and Tengzhou Ma and Juhae Park and Riccardo Alessandri and Ban Xuan Dong and Yunhao Zhao and Naisong Shan and Christopher J. Takacs and Juan J. de Pablo and Shrayesh N. Patel},
  title   = {Thermally Controlled Polymorphism and Doping Gradients in Poly(dodecyl-quaterthiophene) (PQT) for Functionally Graded Organic Thermoelectrics},
  journal = {ChemRxiv},
  year    = {2026},
  doi     = {10.26434/chemrxiv.15004847/v1},
  url     = {https://chemrxiv.org/doi/abs/10.26434/chemrxiv.15004847/v1}
}
```
