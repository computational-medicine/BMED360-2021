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

Some illustrative figures from Rokem et al. The visual white matter: The application of diffusion MRI and fiber tractography to vision science. Jouranal of Vision 2017;17(2):1-30.  [[online](https://jov.arvojournals.org/article.aspx?articleid=2603187)]  (Licensed under a Creative Commons Attribution 4.0 International License)

### Figure 1
<img alt="Rokem et al. 2017 Fig 1" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f01.png?Expires=1622626454&Signature=05tOvHMNABuAt~e1jgqELXgTykDsft6kKm4OiVXzVRwC~6iSpgHVkV-xf4BMUVhoPfOuETXq60tW~ihxokZG5U1WJ0K6KE0YIZSpBvjreBOX1Ax~k3DQf1IJmf8lPNo4vwVlKoWuv83YNwy-Ty2qz-S3mE-ZlSa8flQMWeF5bnWkkjxIFWbmblgNfQ8cxdcFIVwxmW46-e~pO5sq1ir95BfjFBKLvUYdqnE2XVWWhxgSTo58obcjEZnEYTLuLf5ns3-rEtLZvxf1PBb~Lktsr5I~cQMikzevDwS1Zc32kImbzlHHnb12xnpkl6zVwdNVGhrz7ctMxb0QGG6xCBQbkA__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Postmortem and in vivo study of the visual white matter. (A) Postmortem dissection of the optic radiation (OR), showing the Meyer's loop bilaterally (blue arrows; adapted from Sherbondy et al., 2008b). (B) In vivo dissection of the optic radiation showing the optic chiasm, Meyer's loop, and the optic tract as well as both primary visual cortex (V1) and the LGN (Ogawa et al., 2014).


## Figure 2
<img alt="Rokem et al. 2017 Fig 2" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f02.png?Expires=1622626454&Signature=d0YveQDfmTCbyYM0Tlm7A3C9y05OaQ5xYIq~ymeWL2DCA8Q9Sij5zqprHRWn2Q3r4yjLHNtfafvzFCrxlUQvjPjZGaJadXwQGMr4FPwxTilvZRGIO6Hv6Fg3COrWPA3po0B3bLOCNkYoM3tb7vCFZK9tvHSXNfjExz4WEmC~QHqDsNMco70yprnNxcKJ9ogw-pTAuE-G7Y2m0lU5rC8LfqHN0ap6GlEMEG4CeHQNTfgA7LDHv5bPLw6Kn5VCjO-NtweiN5p18KVaz-ccyMNCn4HmxZ0gWUD54hnB1AhYQN7d2bUbuGSmFcMYDOzXrXeLU16TDZI1516yi5hx6p1P0Q__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Inferences about white matter from measurements of water diffusion. (A) Micrograph of the human optic nerve. Left, bundles of myelinated axonal fascicles from the human optic nerve (image courtesy of Dr. George Bartzokis). Right, cartoon example of anisotropic water diffusion restriction by white matter fascicles. Water diffuses further along the direction of the “tube” (Pierpaoli & Basser, 1996). (B) Example of diffusion-weighted magnetic resonance measurements in a single slice of a living human brain. The same brain slice is shown as imaged with two different diffusion weighting directions. Diffusion weighting directions are shown by the inset arrows. The white highlighted area indicates the approximate location of part of the optic radiation (OR). The longitudinal shape of the OR appears as a local darkening of the MRI image when the diffusion-weighting gradient is aligned with the direction of the myelinated fascicles within the OR (right-hand panel).

## Figure 3
<img alt="Rokem et al. 2017 Fig 3" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f03.png?Expires=1622626454&Signature=A2bij-crarynqvEY9puKHHmO~o5peY~4h3uXWh4m~owLrxiWRBq8jERxfpDwujxRGanZPBqOUo6msXDZdlBvWcYFQX69e~BGSUuSQRay4Qqwd~Ix6ETDfe1i9CcdodHP7FBOdCyPr57jEFoWzy2Wdx0lAtzgz-j6oDNniQ4mAI3ntJ4S7YIAs69HiGz0CHkXOjSYGD7akkZa3q6hOYnj-w-JR59b2nr8P-NeLW32sn48KkQS5VI72aASbkWKgf0N~d1-khmjdAg6AJh1AmWmukVQ~vrrwAl~RwTaNwEFIunUaWYLkwKn2Y5~Nxv~k91st4LyE6mnRnSnN93bjvoQRg__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Diffusion tensor imaging. The figure shows the three primary estimates of white matter organization derived from the diffusion tensor model (DTM; Basser, Mattiello, & LeBihan, 1994a, 1994b) measured in a single slice of a human brain. Mean diffusivity (MD; left) represents water diffusion averaged across all measured diffusion directions. Fractional anisotropy (FA; middle) represents the variability of diffusion in different directions. This value is unitless and bounded between zero and one, and it is highest in voxels containing a single dense fascicle, such as in the corpus callosum. The principal diffusion direction (PDD; right) is the direction of maximal diffusion in each voxel. It is often coded with a mapping of the X, Y, and Z components of the direction vector mapped to red, green, and blue color channels, respectively, and scaled by FA. Main white matter structures, such as the corpus callosum (red, along the right-to-left x-axis) and the corticospinal tract (blue, along the superior–inferior y-axis) are easily detected in these maps.


