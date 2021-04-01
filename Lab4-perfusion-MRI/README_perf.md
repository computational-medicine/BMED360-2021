# In Vivo Imaging and Physiological Modelling - BMED 360 Spring 2020


### _perfusion_


## Software

- Model-Free Deconvolution of 4D DCE MRI scans (https://github.com/liob/non-parametric_deconvolution) [[PubMed](https://www.ncbi.nlm.nih.gov/pubmed/31276264)]
- ...

-----------------------

### [Quantiphyse](https://quantiphyse.readthedocs.io/en/latest)  (making a new virtual environment `qp` - other than `bmed360v2020`)

- Quantiphyse is a **visualisation and analysis tool for 3D and 4D biomedical data**. It is particularly suited for physiological or functional imaging timeseries data.

- Quantiphyse is built around the concept of making spatially resolved measurements of physical or physiological processes from imaging data using model-based or model-free methods, often exploiting Bayesian inference techniques.

- Quantiphyse can analyse data by voxels or within regions of interest that may be manually or automatically created, e.g. using supervoxel or clustering methods.

- The aim of Quantiphyse is to bring advanced analysis tools to users via an easy-to-use interface rather than focusing on the visualisation features themselves. See the [[Overview](https://quantiphyse.readthedocs.io/en/latest/basics/overview.html)] for more information, and the Quantiphyse [plugins](https://quantiphyse.readthedocs.io/en/latest/advanced/plugins.html#plugins).

- Quantiphyse enables [batch processing](https://quantiphyse.readthedocs.io/en/latest/advanced/batch.html) to run a set of analysis / processing steps on a whole set of files, without needing to manually load and save the files separately within the GUI. Quantiphyse provides a simple batch processing system which gives access to most of the processing steps available from the GUI, where the batch files are written in YAML syntax.

- Quantiphyse is Open Source software, licensed under the Apache Public License version 2.0 and © 2017-2020 University of Oxford, and available on GitHub: https://github.com/ibme-qubic/quantiphyse.

#### Dynamic Susceptibility Contrast (DSC) MRI

The DSC-MRI package provides a Bayesian modelling tool for quantification of perfusion and other haemodynamic parameters from Dynamic Susceptibility Contrast perfusion MRI of the brain.

- DSC vascular model: 
  - Mouridsen K, Friston K, Hjort N, Gyldensted L, Østergaard L, Kiebel S. Bayesian estimation of cerebral perfusion using a physiological model of microvasculature. NeuroImage 2006;33:570–579. [[link](https://www.sciencedirect.com/science/article/abs/pii/S1053811906006859)]
  - Chappell MA, Groves AR , Whitcher B, Woolrich MW. Variational bayesian inference for a nonlinear forward model. IEEE Transactions on Signal Processing 2009;57(1):223-236. [[link](https://ieeexplore.ieee.org/document/4625948)]

#### Installation

See **installation for Anaconda 3.x** (dependencies from pip) [[here](https://quantiphyse.readthedocs.io/en/latest/basics/install.html#anaconda-python-3-x-dependencies-from-pip)]

> `conda deactivate`
> `conda create -n qp python=3.7`
> `conda activate qp`
> `pip install quantiphyse`

This installs the basic Quantiphyse app. To install plugins use pip, for example this is to install all current plugins:

> `pip install quantiphyse-cest quantiphyse-asl quantiphyse-qbold quantiphyse-dce quantiphyse-dsc quantiphyse-t1 quantiphyse-fsl quantiphyse-sv quantiphyse-perfsim`

On Mac you will also need to do:

> `pip install pyobjc`

**Start the program** by typing `quantiphyse` at a command prompt.
