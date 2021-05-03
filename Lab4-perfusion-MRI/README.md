# In Vivo Imaging and Physiological Modelling - BMED 360 

##  Lab4-perfusion-MRI



- [**01-perf-explore.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab4-perfusion-MRI/01-perf-explore.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab4-perfusion-MRI/01-perf-explore.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>
  
=================================


**We recommend exploration of `Quantiphys` - a viewer and data processing tool for 3D/4D medical imaging data**

Developed by the _Physimals group_, University of Nottingham. 
The Physimals group applies inference (estimation) techniques from information engineering to biomedical data, primarily with a view to clinical application.


-----------------------

### Quantiphyse 

- NOTE: you shlould make and use a new virtual environment `qp` other than `bmed360` (see below)

- Quantiphyse on GitHub: https://github.com/physimals/quantiphyse

- Quantiphyse `readthedocs`: https://quantiphyse.readthedocs.io/en/latest

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

> `conda deactivate`<br>
> `conda create -n qp python=3.8`<br>
> `conda activate qp`<br>
> `pip install quantiphyse`<br>

This installs the basic Quantiphyse app. To install plugins use `pip` (in the `qp` conda environment), for example this is to install all current plugins:

> `pip install quantiphyse-cest quantiphyse-asl quantiphyse-qbold quantiphyse-dce quantiphyse-dsc quantiphyse-t1 quantiphyse-fsl quantiphyse-sv quantiphyse-perfsim`

On Mac you will also need to do:

> `pip install pyobjc`

**Start the program** by typing `quantiphyse` at the command prompt.



## Other Software and information sources

- Model-Free Deconvolution of 4D DCE MRI scans (https://github.com/liob/non-parametric_deconvolution) [[PubMed](https://www.ncbi.nlm.nih.gov/pubmed/31276264)]
- Analysis of Dynamic Susceptibility Contrast (DSC) MRI (https://github.com/QIICR/DSC_Analysis) and on `3DSlicer` (https://www.slicer.org/wiki/Documentation/4.10/Modules/DSC_MRI_Analysis) - not updated for 3 years

- [Introduction to DSC-MRI from Siemens](https://www.siemens-healthineers.com/siemens_hwem-hwem_ssxa_websites-context-root/wcm/idc/groups/public/@global/@imaging/@mri/documents/download/mdaw/mtix/~edisp/brain_perfusion_how_why-00093544.pdf)
- [Equations for conversion of signal to concentration for DSC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2657863)
- Other method to investigate DSC MRI:
     - Akbari et al. [Pattern Analysis of Dynamic Susceptibility Contrast-enhanced MR Imaging Demonstrates Peritumoral Tissue Heterogeneity](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4208985/pdf/radiol.14132458.pdf) Radiology 2014;273(2):502-510.
     - Boxerman et al. [Relative cerebral blood volume maps corrected for contrast agent extravasation significantly correlate with glioma tumor grade, whereas uncorrected maps do not](https://pubmed.ncbi.nlm.nih.gov/16611779) Am J Neuroradiol 2006;27(4):859-867.


## Deep learning and perfusion MRI

- N. Debs et al. Impact of the reperfusion status for predicting the final stroke infarct using deep learning. Neuroimage Clin 2021;29:102548 [[online](https://pubmed.ncbi.nlm.nih.gov/33450521)]
<img alt="Debs et al. 2021 Graphical abstract" src="https://ars.els-cdn.com/content/image/1-s2.0-S2213158220303855-ga1_lrg.jpg" width="800px" heigh="auto">
Graphical abstract (CC BY-NC-ND 4.0) <img alt="Debs et al. 2021 Fig. 2" src="https://ars.els-cdn.com/content/image/1-s2.0-S2213158220303855-gr2_lrg.jpg" width="800px" heigh="auto"> Overview of the proposed deep learning architecture. Top left: The network takes five MRI images (2D slices from DWI, ADC, CBV, CBF, Tmax volumes) as input. Below: Each input image is processed independently on 5 separate branches. Pink, purple, yellow, red and green feature maps result from 2D-convolutions and maxpooling. The output of the 5 branches are then concatenated, and upsampled through 2D-deconvolution layers. The network produces an output map with 3 classes (lesion, healthy tissue and background). Top Right: The predicted lesion has to be compared to the true lesion from the final FLAIR. (CC BY-NC-ND 4.0)<br><br>



- J.W. Sanders et al. Synthetic generation of DSC-MRI-derived relative CBV maps from DCE MRI of brain tumors. Magn Reson Med 2021;85(1):469-479 [[online](https://onlinelibrary.wiley.com/doi/epdf/10.1002/mrm.28432)] (Code: https://github.com/jeremiahws/dlae)

- Y. Yu et al. Use of Deep Learning to Predict Final Ischemic Stroke Lesions From Initial Magnetic Resonance Imaging. JAMA Netw Open 2020;3(3):e200772 [[online](https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2762679)]
<img alt="Yu et al. 2020 Fig. 2" src="https://cdn.jamanetwork.com/ama/content_public/journal/jamanetworkopen/938397/zoi200050f2_1602778823.69581.png?Expires=1623086601&Signature=t~z8xgp0A89FnGgLtJMBKkJuUDRi1s6t8zhgubtlqoWgTAOrXMO3UY0Q-lbl5b~0T3qpMNbdXgeEBsC~yBsyhMz47hYQsKE5iYGTy5uqtSO3q~rKdTCUxzjt~c4pNjrEUYrTCrBMGJC0jvGH5h8GWBDefwa-cAel4VhwU-A9cUnoAAoZDbvwKqra4HOT7MR3dvX5pMPviyBJ-l6lbiPnzvN93vQvfYHO2QYVFcX1IJzyPS2obS8xfzKuvneBkJY7bj6QpNnhcLoc3NL4FwlMVCTKQvrQrfcnWfN1xHMsjyLOJr0YlBtuA-J9xvTiVIg9hGrSwIksmDUgdI9OA1mX6A__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA" width="800px" heigh="auto">
Figure 2.  Examples of Predictions From the Model Compared With Thresholding Methods in Typical Cases. Two representative sections are shown. Minimal reperfusion indicates a 24-hour reperfusion rate of 0%; major reperfusion, 24-hour reperfusion rate of 100%; and partial reperfusion, 24-hour reperfusion rate of 60%. Baseline images acquired at presentation were inputs, and the final true infarct lesion at 3 to 7 days was considered the ground truth for the model. Infarct lesions at 3 to 7 days are outlined by the red solid line on the T2-weighted fluid-attenuated inversion recovery images. Numbers after predicted volume (mL) indicate Dice score coefficients. CBF indicates cerebral blood flow; CBV, cerebral blood volume; DSC, Dice score coefficient; DWI, diffusion-weighted imaging; MTT, mean transit time; and Tmax transit, time to maximum of the residue function (CC-BY License). [[Supplementary Online Content](https://cdn.jamanetwork.com/ama/content_public/journal/jamanetworkopen/938397/zoi200050supp1_prod_1602778823.41455.pdf?Expires=1623096240&Signature=oTkj6JEh5gvp4j~0l-EkKzUcL1QMTISHKsmNzVGFruWgGIf1ZgCyWRMD6jT3GUo8GkGhdPZEIbcIX9CvgD8PAMOzvWqI4VIav5aj6Y-QS-DL5q6N2SV8O-YqOApciTMhX78tglBDLQa7k5aIgtf-ny605V2IhAIoccy-4vvMv5TZnaClXUVtCrt3v8y3WI7Qk3rxHjEx~RnhB0djhdf0rBh1fBnwtw1xSEbQt2zLAmC5TM2abUbVHjNERVFu1GevBfHuLpiRIQBoPUU8fq1DeGfgEbC05ZktMQmlfNG4ppzty1rgom3KeXtHJ3pH2LNq122g6bC9l3c371VNhnQsGw__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA)]
