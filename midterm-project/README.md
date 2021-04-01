# In Vivo Imaging and Physiological Modelling - BMED 360 Spring 2021


## Midterm project:

### The KIWI fruit seed segmentation challenge

![problem](./assets/photo_mri_kiwi_20050219.jpg)


## [Problem formulation](https://docs.google.com/presentation/d/1B_E-Pcwfvj3hgG2o02vsxmez_Bm6x72uI5tzIu0dymU/edit?usp=sharing)

From the course website [https://github\.com/computational\-medicine/BMED360\-2021](https://github.com/computational-medicine/BMED360-2021)
download the [KIWI](http://en.wikipedia.org/wiki/Kiwi_(fruit)) fruit data as [DICOM](https://www.dicomstandard.org) files (mentioned in [this](https://github.com/computational-medicine/BMED360-2021/tree/master/Lab0-beginners-guide/03-begin-image_processing_basics.ipynb) Lab0 Jupyter notebook), or as a single [NIFTI](https://github.com/computational-medicine/BMED360-2021/tree/master/midterm-project/data) file.

## Data description

The 3D dataset, consisting of 128 transaxial slices through the long axis of
the kiwi, was acquired with the 7 T [Bruker Pharmascan](https://www.bruker.com/en/products-and-solutions/preclinical-imaging/mri/pharmascan-new.html) MRI scanner at the *Molecular Imaging Center* ([MIC/Vivarium](https://wikihost.uib.no/mriwiki/index.php/Main_Page)), University of Bergen, using the 2D [RARE](http://www.mr-tip.com/serv1.php?type=seq&sub=12) pulse sequence
(Echo Train Length = 8, TR = 18520 ms, TE = 63.9 ms, No. of Averages = 2,
Flip Angle = 180 deg, Slice thickness = 0.5 mm, In-plane pixel resolution =
0.234 x 0.234 mm$^2$,  Acquisition matrix = 256 x 256, Number of slices = 128).

## Tentative methods
[Segment](https://en.wikipedia.org/wiki/Image_segmentation) the seeds from the background using all the clever tricks / ideas
you can come up with (e.g. adaptive thresholding, template matching /
a priori information, Fourier space methods, deep convolutional neural networks, …).
Try out both 2D and 3D approaches.   [Use PYTHON, JAVA ([ImageJ](https://imagej.net/Welcome)/[Fiji](https://imagej.net/Fiji)/[MIPAV](https://mipav.cit.nih.gov)) or MATLAB or R or  …]

From your segmentation results: 

- Make an estimate of the number of seeds in the Kiwi.
- If you are using probabilistic methods you might also provide a confidence interval for your estimate.
- Try to assess the **goodness of your segmentation method**  by cutting out a portion of the volume (e.g. some contiguous slices) and do a manual count of the number of seeds and compare with your segmentation results (e.g. *false positive detections*, *false negative detections*).
- Now, consider the Kiwi to be the brain and the seeds to be pathological lesions, such as [MS plaques](https://www.ncbi.nlm.nih.gov/pubmed/23084503). 
- Make an estimate of the [“lesion load”](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0120754) i.e. the ratio: volume of lesions (seeds) / volume of whole brain (kiwi), using the voxel size information from the scan and your segmentation results.


## Report
Write a **short scientific report** (preferably in LaTeX / Overleaf) from your investigation, including: 
- **Title** and **Author** (your name, e-mail address, and date of submission)
- “**Introduction**” with background and problem formulation
- “**Materials and methods**” regarding test object (kiwifruit), image acquisition and the image analysis methods being used (your algorithm / code can be given in an Appendix)
- “**Experimental results**” (seed counts for given algorithmic parameter settings, processing time, etc., use Figures and Tables to describe your results) 
- “**Discussion**” (main results, strength and weaknesses of your approach, suggestions for improvement, relevance to similar problems, and "Conclusions").
- “**Bibliography**” (try to find some relevant literature to this image analysis task, and your algorithmic approach). 
 
The Report should be sent by e-mail at latest on the day before the 2nd period of the course.


