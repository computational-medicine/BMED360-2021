# In Vivo Imaging and Physiological Modelling - BMED 360

### Diffusion MRI

- [**00-dmri-get-data.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/00-dmri-get-data.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/00-dmri-get-data.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>

- [**01-dmri-extract-S0s.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/01-dmri-extract-S0s.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/01-dmri-extract-S0s.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>

- [**02-dmri-find-affine-fs-brainmask2dwi.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/02-dmri-find-affine-fs-brainmask2dwi.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/02-dmri-find-affine-fs-brainmask2dwi.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>

- [**03-dmri-reconstruction-dti.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/03-dmri-reconstruction-dti.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/03-dmri-reconstruction-dti.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>
  
- [**04-dmri-do-affine-reg-anat2dwi.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/04-dmri-do-affine-reg-anat2dwi.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/04-dmri-do-affine-reg-anat2dwi.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>
  
- [**05-dmri-dti-feature-extraction-roi-wise.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/05-dmri-dti-feature-extraction-roi-wise.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/05-dmri-dti-feature-extraction-roi-wise.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>
  
- [**06-dmri-dti-feature-analysis-roi-wise.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/06-dmri-dti-feature-analysis-roi-wise.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab3-diffusion-MRI/06-dmri-dti-feature-analysis-roi-wise.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>
  uses **BIDS** structure and information (cf. `pip install pybids`)
  
  

TODO: Check the notebooks from https://github.com/arvidl/viola-ibs-imaging 



### DiPy tutorials

DIPY is the paragon 3D/4D+ imaging library in Python. Contains generic methods for spatial normalization, signal processing, machine learning, statistical analysis and visualization of medical images. Additionally, it contains specialized methods for computational anatomy including diffusion, perfusion and structural imaging.

https://dipy.org/tutorials

### Simulators

Fick et al. The Dmipy Toolbox: Diffusion MRI Multi-Compartment Modeling and Microstructure Recovery Made Easy. Front Neuroinform. 2019; 13: 64. [[link](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6803556)] Github: https://github.com/AthenaEPI/dmipy

### Other sources for dMRI experiments and analyses

- Examples of diffusion MRI analysis for vision science by Ariel Rokem, U Wash: https://github.com/arokem/visual-white-matter
- `PyNets`- A Reproducible Workflow for Structural and Functional Connectome Ensemble Learning by Derek Pisner, U Tex, Austin: https://github.com/dPys/PyNets
- `qsiprep`- Preprocessing and analysis of q-space images from The Lifespan Informatics and Neuroimaging Center at the University of Pennylvannia: https://github.com/PennLINC/qsiprep
- `grr_dti_tutorial` - Using dipy to explore Diffusion Weighted Imaging and Tractography by M. Castello & M. de Villemejane at Dartmouth College: https://github.com/mvdoc/grr_dti_tutorial

----------------------

Some illustrative figures from Rokem et al. The visual white matter: The application of diffusion MRI and fiber tractography to vision science. Jouranal of Vision 2017;17(2):1-30.   (Licensed under a Creative Commons Attribution 4.0 International License)

<img alt="Rokem et al. 2017 Fig 1" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f01.png?Expires=1622626454&Signature=05tOvHMNABuAt~e1jgqELXgTykDsft6kKm4OiVXzVRwC~6iSpgHVkV-xf4BMUVhoPfOuETXq60tW~ihxokZG5U1WJ0K6KE0YIZSpBvjreBOX1Ax~k3DQf1IJmf8lPNo4vwVlKoWuv83YNwy-Ty2qz-S3mE-ZlSa8flQMWeF5bnWkkjxIFWbmblgNfQ8cxdcFIVwxmW46-e~pO5sq1ir95BfjFBKLvUYdqnE2XVWWhxgSTo58obcjEZnEYTLuLf5ns3-rEtLZvxf1PBb~Lktsr5I~cQMikzevDwS1Zc32kImbzlHHnb12xnpkl6zVwdNVGhrz7ctMxb0QGG6xCBQbkA__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">



