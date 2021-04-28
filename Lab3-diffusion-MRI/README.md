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

Some **illustrative figures** from the review paper by  A. Rokem et al. _The visual white matter: The application of diffusion MRI and fiber tractography to vision science_. Journal of Vision 2017;17(2):1-30.  [[online](https://jov.arvojournals.org/article.aspx?articleid=2603187)]  (Licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0) - free to share and adapt)

### Figure 1
<img alt="Rokem et al. 2017 Fig 1" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f01.png?Expires=1622626454&Signature=05tOvHMNABuAt~e1jgqELXgTykDsft6kKm4OiVXzVRwC~6iSpgHVkV-xf4BMUVhoPfOuETXq60tW~ihxokZG5U1WJ0K6KE0YIZSpBvjreBOX1Ax~k3DQf1IJmf8lPNo4vwVlKoWuv83YNwy-Ty2qz-S3mE-ZlSa8flQMWeF5bnWkkjxIFWbmblgNfQ8cxdcFIVwxmW46-e~pO5sq1ir95BfjFBKLvUYdqnE2XVWWhxgSTo58obcjEZnEYTLuLf5ns3-rEtLZvxf1PBb~Lktsr5I~cQMikzevDwS1Zc32kImbzlHHnb12xnpkl6zVwdNVGhrz7ctMxb0QGG6xCBQbkA__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Postmortem and in vivo study of the visual white matter. (A) Postmortem dissection of the optic radiation (OR), showing the Meyer's loop bilaterally (blue arrows; adapted from Sherbondy et al., 2008b). (B) In vivo dissection of the optic radiation showing the optic chiasm, Meyer's loop, and the optic tract as well as both primary visual cortex (V1) and the LGN (Ogawa et al., 2014).


## Figure 2
<img alt="Rokem et al. 2017 Fig 2" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f02.png?Expires=1622626454&Signature=d0YveQDfmTCbyYM0Tlm7A3C9y05OaQ5xYIq~ymeWL2DCA8Q9Sij5zqprHRWn2Q3r4yjLHNtfafvzFCrxlUQvjPjZGaJadXwQGMr4FPwxTilvZRGIO6Hv6Fg3COrWPA3po0B3bLOCNkYoM3tb7vCFZK9tvHSXNfjExz4WEmC~QHqDsNMco70yprnNxcKJ9ogw-pTAuE-G7Y2m0lU5rC8LfqHN0ap6GlEMEG4CeHQNTfgA7LDHv5bPLw6Kn5VCjO-NtweiN5p18KVaz-ccyMNCn4HmxZ0gWUD54hnB1AhYQN7d2bUbuGSmFcMYDOzXrXeLU16TDZI1516yi5hx6p1P0Q__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Inferences about white matter from measurements of water diffusion. (A) Micrograph of the human optic nerve. Left, bundles of myelinated axonal fascicles from the human optic nerve (image courtesy of Dr. George Bartzokis). Right, cartoon example of anisotropic water diffusion restriction by white matter fascicles. Water diffuses further along the direction of the “tube” (Pierpaoli & Basser, 1996). (B) Example of diffusion-weighted magnetic resonance measurements in a single slice of a living human brain. The same brain slice is shown as imaged with two different diffusion weighting directions. Diffusion weighting directions are shown by the inset arrows. The white highlighted area indicates the approximate location of part of the optic radiation (OR). The longitudinal shape of the OR appears as a local darkening of the MRI image when the diffusion-weighting gradient is aligned with the direction of the myelinated fascicles within the OR (right-hand panel).

## Figure 3
<img alt="Rokem et al. 2017 Fig 3" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f03.png?Expires=1622626454&Signature=A2bij-crarynqvEY9puKHHmO~o5peY~4h3uXWh4m~owLrxiWRBq8jERxfpDwujxRGanZPBqOUo6msXDZdlBvWcYFQX69e~BGSUuSQRay4Qqwd~Ix6ETDfe1i9CcdodHP7FBOdCyPr57jEFoWzy2Wdx0lAtzgz-j6oDNniQ4mAI3ntJ4S7YIAs69HiGz0CHkXOjSYGD7akkZa3q6hOYnj-w-JR59b2nr8P-NeLW32sn48KkQS5VI72aASbkWKgf0N~d1-khmjdAg6AJh1AmWmukVQ~vrrwAl~RwTaNwEFIunUaWYLkwKn2Y5~Nxv~k91st4LyE6mnRnSnN93bjvoQRg__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Diffusion tensor imaging. The figure shows the three primary estimates of white matter organization derived from the diffusion tensor model (DTM; Basser, Mattiello, & LeBihan, 1994a, 1994b) measured in a single slice of a human brain. Mean diffusivity (MD; left) represents water diffusion averaged across all measured diffusion directions. Fractional anisotropy (FA; middle) represents the variability of diffusion in different directions. This value is unitless and bounded between zero and one, and it is highest in voxels containing a single dense fascicle, such as in the corpus callosum. The principal diffusion direction (PDD; right) is the direction of maximal diffusion in each voxel. It is often coded with a mapping of the X, Y, and Z components of the direction vector mapped to red, green, and blue color channels, respectively, and scaled by FA. Main white matter structures, such as the corpus callosum (red, along the right-to-left x-axis) and the corticospinal tract (blue, along the superior–inferior y-axis) are easily detected in these maps.


## Figure 4
<img alt="Rokem et al. 2017 Fig 4" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f04.png?Expires=1622626454&Signature=XlQn8hjZdAs2hEhxF~Ay8-P5A7FlzfPn3KdYOCoExwoH7sKad0CLROboJrUD29wfA0crOTtYdq5aXVIuXoKOJRJZWdWuD5cBCQ72CNWo--rJCuvr-uyj934pWRKrpLyhqGKIUFdJ1poC2ICi07FBpN-b~R-9o2~SQdH6kKTyrvyr5KixPHlVFf2eHB0JbCoMIfrH-bzBoacMkYldQEtOU3HodvPiiWbFVqh5Ah3SE9WX5uzDWSOTEMaatqCV1ypVjqpElgiD73odmfTVr6FHT6c~tDU4wOQVD2p8fblI-zMcBWAuwYSGgk~yvymTiNJUJMCHG0y-hGdzpthWmYVUlg__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Relationship between dMRI signals, voxel models of diffusion, and tractography. (A) An axial brain slice. Two voxel locations are indicated in blue and green. The white rectangle indicates the location of the images in panel C. (B) Measured diffusion-weighted MRI in the colored locations in panel A. Left column: Diffusion signal for the green (top) and blue (bottom) locations rendered as 3-D surfaces with the color map indicating the intensity of the diffusion-weighted signal in each direction (red is low signal or high diffusion and yellow-white is high signal or low diffusion). Middle column: The 3-D Gaussian distribution of diffusion distance, estimated from the DTM for the signal to the left. The major axis of the ellipsoid indicates the PDD estimated by the tensor model, different for the two voxels. Right column: fODF estimated by a fascicle mixture model: The constrained spherical deconvolution (CSD) model (Tournier et al., 2007) from the signal to its left. CSD indicates several probable directions of fascicles. Color map indicates likelihood of the presence of fascicles in a direction. (C) Top panel: Detail of the region highlighted in panel A (white frame) with example of two seeds randomly placed within the white matter and used to generate the fascicles in the bottom panel. Bottom panel: Fits of the CSD model to each voxel and two example tracks (streamlines) crossing at the location of the centrum semiovale.


## Figure 5
<img alt="Rokem et al. 2017 Fig 5" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f05.png?Expires=1622626454&Signature=ytrUBmZuXiz62WcnGX~PioIMkO0WnEgYSqKyT1mOsAZt9Xt7TRIU1hSglYKUA8BH3AFZAmTakCZgdjOBoQYU9Y8~6WuPFlZ-J~Qz7xFA0wQD0~XbFZL5~vdU8KUTkyH6qncn6NEkvpQ3mCXLYGy2sFOqy0scK3s7u4TjyIwZKKw7YeiTzJ-1hBx6dHLcXtG7uQGkX-6LCMBgSv1m53TKRlFdpnrG~hJcNF5xq6VKOqZGzCFhCzAQH-62uesWOt7i9dAh7cgrvwMLPJiwzFNzC-4kci9WZh14JaCjQnwISddWE3GquL6Wf~NYj7NJU57EcuHv4BnJfEgsVTFLvqci0Q__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Example applications of tractography to study brain connections and white matter. (A) Estimates of the optic radiation (OR; left panel gold) and tract (OT; left panel, magenta) from probabilistic tractography (Ogawa et al., 2014). Estimates of FA projected on top of the anatomy of the OR and OT (right panel). (B) Measurement of FA averaged across the length of the left optic radiation in panel A. (C) Matrix of connections between several cortical brain areas. The connection value in each cell of the matrix represents the number of fascicles touching the two regions.

## Figure 6
<img alt="Rokem et al. 2017 Fig 6" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f06.png?Expires=1622626454&Signature=IPMe3X~D6oO5vhWWTKHYgXL7C919X-3apZF0mpYZsH5M4N6WOGGgU7wdc6TX1M-szyziXmea6LmFidCbcwr9-~xYrlhrH4bpvo~y8taet0PnhueiuslqzxB-ydyQ0c2J00Lu~QfHBXVOWZCB4YP7pvgTBYDXXABAI9bbnsutGDGeMugDeiGp54wPKm~N4L4HfiqHZco0Y1BQkddzz6F3-zhKyja~dYSLhTZBX8pC16FLX3kmLZIHap8RcGLnGnWv9-pgVlaumbqN4ME7dTLqUQc49Fh4dwXASa2YPEamvHwBxgSi9YP6qzgCGGZmKBLLaHcoTlNleM8nW1LeMxFuwg__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Relationship between cortical visual field maps and tract end points. (A) Visual field maps identified by fMRI. The surface of the dorsal visual cortex was extracted (dotted box in top panel) and enlarged (bottom panel). Colors on the bottom panels describe polar angle representation in population receptive field maps (Dumoulin & Wandell, 2008; red: upper vertical meridian, blue: horizontal, green: lower vertical meridian). The boundaries between visual field maps are defined as polar angle reversals in population receptive field maps. (B) The VOF identified in an identical subject using dMRI and fiber tractography (reproduced from Takemura, Rokem, et al., 2016, with permission). (C) Overlay between visual field maps and VOF projections. Color maps indicate voxels near the VOF end points in this hemisphere, and the color scale indicates the density of fascicle end points. The borders of visual field maps (solid and dotted lines; upper panel depicts the representation of horizontal and vertical meridians) were adopted from fMRI-based mapping (panel A).


## Figure 7
<img alt="Rokem et al. 2017 Fig 7" src="https://arvo.silverchair-cdn.com/arvo/content_public/journal/jov/936040/m_i1534-7362-17-2-4-f07.png?Expires=1622626454&Signature=Im1gKG4AocAip7WGAw4FFnLk~ohdWn6TAHbcV1syp8DKulppDSTybp9jyDRBMLcbEInjVvrYEBYRcoPAyJiQK5YRyRXGa6PX6HflwOwYmYoaclrTJOOTNW~eQ4F1GE-zSJwxoyLruesYDzGzPNcuFB0lqpttkWq6xl-8uGLkfdaMc3rOW5b5kjvtWStCpxIUxQWzY5tGiSqQm7TIWTQwMSVOsehW5ctAVzyOu-LbQmFpRTz2wmpUWqnMJl7-h6lWUEtT~uDOpsftqCHJfDmPdf9yJvhbA6BLr~q2rNMMVz3qR6D~-~TM0dvw2KaSI1QA4l96DhZx6Xge6f94hxTOcA__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
The role of the inferior longitudinal fasciculus (ILF) and the inferior fronto-occipital fasciculus (IFOF) in face perception. (A) Representative example of fibers extracted from the ILF, which is the primary occipitotemporal associative tract (Crosby, 1962; Gloor, 1997) that propagates signals through the ventral visual cortex between the primary visual cortex and the anterior temporal lobe and, finally, from the IFOF, which begins in the occipital cortex, continues medially through the temporal cortex dorsal to the uncinate fasciculus, and terminates in the inferior frontal and dorsolateral frontal cortex (Catani et al., 2002). (B) In typically developing individuals, there is a systematic age-related increase in the macrostructural properties of both the right and left ILF, which is measured here by the volume of the tract in cubic millimeters across the first two decades of life. (C) We observed a joint structure–function correspondence between the size of the individually defined functional right FFA and the volume of the right ILF, which held even when age was accounted for (Scherf et al., 2014). (D) In typically developing adults, there is a systematic age-related decline in the microstructural properties of both the right and left IFOF as measured by the mean FA, indicating that it is disproportionately vulnerable compared to the ILF during the aging process. (E) Individuals who have a lifetime history of face blindness, an inability to recognize faces, in spite of normal intelligence and sensory vision, have systematically smaller volume visual fiber tracts, particularly in the right ILF, as depicted here, compared to age-matched control participants. Together, these findings provide converging evidence that these two major tracts, the IFOF and the ILF, carry signals important for face perception.



