# In Vivo Imaging and Physiological Modelling - BMED 360

## Lab5-DCE-MRI


- [**01-dce-mri-kidney-explore.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab5-DCE-MRI/01-dce-mri-kidney-explore.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab5-DCE-MRI/01-dce-mri-kidney-explore.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>
  
- [**02-dec-mri-rat-brain-tumor-explore.ipynb**](https://nbviewer.jupyter.org/github/computational-medicine/BMED360-2021/blob/main/Lab5-DCE-MRI/02-dce-mri-rat-brain-tumor-explore.ipynb)<a href="https://colab.research.google.com/github/computational-medicine/BMED360-2021/blob/main/Lab5-DCE-MRI/02-dce-mri-rat-brain-tumor-explore.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>
  
==================================================
  

<img alt="BMED_360_Lec6_vascular_permeability_dce_mri_model_based_analysis" src="https://https://github.com/computational-medicine/BMED360-2021/raw/main/Lab5-DCE-MRI/assets/BMED_360_Lec6_vascular_permeability_dce_mri_model_based_analysis.png" width="800px" heigh="auto">


## Software

- Python module for processing dynamic contrast enhanced magnetic resonance imaging (DCE-MRI) data (https://github.com/aydindemircioglu/pydcemri)


- MITK-ModelFit: A generic open-source framework for model fits and their exploration in medical imaging – design, implementation and application on the example of DCE-MRI (http://mitk.org/wiki/MITK-ModelFit ; https://phabricator.mitk.org/source/mitk.git)    [[PDF](https://bmcbioinformatics.biomedcentral.com/track/pdf/10.1186/s12859-018-2588-1)]

- PKModellingPy is a software tool written in Python that provides pharmacokinetic (PK) modeling (based on Tofts Model) for dynamic contrast enhanced MRI (DCE MRI). IPython provides a rich architecture for interactive PK Modelling. https://github.com/mehrtash/PKModellingPy

- Ole Gunnar Johansen. DCE-MRI Pharmacokinetic Model Optimization and Implications for Brain Cancer Imaging. MSc thesis in Medical Physics and Biophysics, Department of Physics, University of Oslo. 2018.  Implementation in Python (https://github.com/olegjo/Masteroppgave) [[pdf](https://www.duo.uio.no/bitstream/handle/10852/61659/thesis_FINAL.pdf?sequence=1&isAllowed=y)]


## Deep learning and DCE-MRI


- K.S. Choi et al. Improving the Reliability of Pharmacokinetic Parameters at Dynamic Contrast-enhanced MRI in Astrocytomas: A Deep Learning Approach. Radiology 2020;297(1):178-188 [[online](https://doi.org/10.1148/radiol.2020192763)]

- J.W. Sanders et al. Synthetic generation of DSC-MRI-derived relative CBV maps from DCE MRI of brain tumors. Magn Reson Med 2021;85(1):469-479 [[link](https://pubmed.ncbi.nlm.nih.gov/32726488)]

- J. Nalepa et al. Fully-automated deep learning-powered system for DCE-MRI analysis of brain tumors. Artif Intell Med 2020;102:101769 [[online](https://www.sciencedirect.com/science/article/pii/S0933365718306638?via%3Dihub)]. 
 
- **Other relevant information**: 
  -   [Drafts of test images for DCE-MRI analysis that are part of the QIBA project](https://sites.duke.edu/dblab/qibacontent) and [Access Instructions](https://qibawiki.rsna.org/index.php/Synthetic_DCE-MRI_Data) 
  -   [NFBS Skull-Stripped Repository](http://preprocessed-connectomes-project.org/NFB_skullstripped)
  -   [Multi-vendor, multi-field-strength T1-weighted brain reconstructed data](https://sites.google.com/view/calgary-campinas-dataset/download) intended for developing data-driven automatic segmentation methods


<!--
- N. Debs et al. Impact of the reperfusion status for predicting the final stroke infarct using deep learning. Neuroimage Clin 2021;29:102548 [[online](https://pubmed.ncbi.nlm.nih.gov/33450521)]
<img alt="Debs et al. 2021 Graphical abstract" src="https://ars.els-cdn.com/content/image/1-s2.0-S2213158220303855-ga1_lrg.jpg" width="800px" heigh="auto">
Graphical abstract (CC BY-NC-ND 4.0) <img alt="Debs et al. 2021 Fig. 2" src="https://ars.els-cdn.com/content/image/1-s2.0-S2213158220303855-gr2_lrg.jpg" width="800px" heigh="auto"> Overview of the proposed deep learning architecture. Top left: The network takes five MRI images (2D slices from DWI, ADC, CBV, CBF, Tmax volumes) as input. Below: Each input image is processed independently on 5 separate branches. Pink, purple, yellow, red and green feature maps result from 2D-convolutions and maxpooling. The output of the 5 branches are then concatenated, and upsampled through 2D-deconvolution layers. The network produces an output map with 3 classes (lesion, healthy tissue and background). Top Right: The predicted lesion has to be compared to the true lesion from the final FLAIR. (CC BY-NC-ND 4.0)<br><br>
-->


## What DCE MRI can(not) tell us about renal pathophysiology?

(from the Berlin meeting on [Functional Renal Imaging: Where Physiology, Nephrology, Radiology and Physics Meet](https://www.mdc-berlin.de/renal))

See [[here](https://github.com/arvidl/dce-mri-renal-pathophysiology#readme)] and the [[PDF](https://github.com/arvidl/dce-mri-renal-pathophysiology/blob/master/presentation/lundervold_what_DCE_MRI_can(not)_tell_us_about_renal_pathophysiology_Berlin_20171012.pdf)] presentation, and a related presentation [[here](https://github.com/arvidl/functional-kidney-imaging#readme)].
