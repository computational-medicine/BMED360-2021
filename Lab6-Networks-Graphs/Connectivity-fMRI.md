# In Vivo Imaging and Physiological Modelling - BMED 360

## Brain connectivity and _MRI

---------------------
## Videos

- [Principles of fMRI Course](https://www.youtube.com/channel/UC_BIby85hZmcItMrkAlc8eA) by Tor Wager & Martin Lindquist
- [Analyzing Neural Time Series Data: Principles & Theory](http://mikexcohen.com/lectures.html) By Mike X Cohen
- [Mumford Brain Stats](https://www.youtube.com/channel/UCZ7gF0zm35FwrFpDND6DWeA) by Jeanette Mumford


---------------------------------
## Software for network science

- An `awesome list` of resources to construct, analyze and visualize network data - https://github.com/briatte/awesome-network-analysis

- Jupyter notebooks developed and used by [Erika Fille Legara](https://erikalegara.site) in her Network Science class -  https://github.com/eflegara/Network-Science-Lectures





NOTE: [`Awesome list`](https://github.com/sindresorhus/awesome) is a concept developed by Sindre Sørhus (Norway) of awesome stuff curated in a list.

----------------------------------

## Software for functional MRI and brain connectivity

- **Dartmouth fMRI Analysis Course** taught by Prof Luke Chang  - [**Dartbrains**](https://dartbrains.org) /  https://github.com/ljchang/dartbrains

How can we understand how the brain works? This course provides an introduction to in vivo neuroimaging in humans using functional magnetic resonance imaging (fMRI). The goal of the class is to introduce: (1) how the scanner generates data, (2) how psychological states can be probed in the scanner, and (3) how this data can be processed and analyzed. Students will be expected to analyze brain imaging data using the opensource Python programming language. We will be using several packages such as numpy, matplotlib, nibabel, nilearn, fmriprep, and nltools. This course will be useful for students working in neuroimaging labs, completing a neuroimaging thesis, or interested in pursuing graduate training in fields related to cognitive neuroscience.

- **GLOSSARY related to DartBrains and friends** (by *Luke Chang*)

##### networkx
[NetworkX](https://networkx.github.io/) is a Python package for the creation, manipulation, and study of the structure, dynamics, and functions of complex networks.

```import networkx as nx```

***

[nx.draw_kamada_kawai](https://networkx.github.io/documentation/stable/reference/generated/networkx.drawing.nx_pylab.draw_kamada_kawai.html): Draw the graph G with a Kamada-Kawai force-directed layout.

[nx.degree](https://networkx.github.io/documentation/networkx-1.10/reference/generated/networkx.DiGraph.degree.html): Return the degree of a node or nodes. The node degree is the number of edges adjacent to that node.

##### NiBabel
[nibabel](https://nipy.org/nibabel/) is a package to help Read / write access to some common neuroimaging file formats, including: ANALYZE (plain, SPM99, SPM2 and later), GIFTI, NIfTI1, NIfTI2, CIFTI-2, MINC1, MINC2, AFNI BRIK/HEAD, MGH and ECAT as well as Philips PAR/REC. We can read and write FreeSurfer geometry, annotation and morphometry files. There is some very limited support for DICOM. NiBabel is the successor of PyNIfTI.

The various image format classes give full or selective access to header (meta) information and access to the image data is made available via NumPy arrays.

```import nibabel as nib```

***

[nib.load](https://nipy.org/nibabel/reference/nibabel.loadsave.html#module-nibabel.loadsave): Load file given filename, guessing at file type

[nib.save](https://nipy.org/nibabel/reference/nibabel.loadsave.html#nibabel.loadsave.save): Save an image to file adapting format to filename

[data.get_fdata](https://nipy.org/nibabel/reference/nibabel.dataobj_images.html): Return image data from image with any necessary scaling applied

[data.get_shape](https://nipy.org/nibabel/reference/nibabel.dataobj_images.html): Return shape for image


[data.header](https://nipy.org/nibabel/nibabel_images.html): The header of an image contains the image metadata. The information in the header will differ between different image formats. For example, the header information for a NIfTI1 format file differs from the header information for a MINC format file.

[data.affine](https://nipy.org/nibabel/reference/nibabel.nifti1.html#nibabel.nifti1.Nifti1Image): homogenous affine giving relationship between voxel coordinates and world coordinates. Affine can also be None. In this case, obj.affine also returns None, and the affine as written to disk will depend on the file format.

##### NiLearn
[nilearn](https://nilearn.github.io/) is a Python module for fast and easy statistical learning on NeuroImaging data.

It leverages the scikit-learn Python toolbox for multivariate statistics with applications such as predictive modelling, classification, decoding, or connectivity analysis.

***

[nilearn.plotting.plot_anat](https://nilearn.github.io/modules/generated/nilearn.plotting.plot_anat.html): Plot cuts of an anatomical image (by default 3 cuts: Frontal, Axial, and Lateral)

[nilearn.plotting.view_img](https://nilearn.github.io/modules/generated/nilearn.plotting.view_img.html):Interactive html viewer of a statistical map, with optional background

[nilearn.plotting.plot_glass_brain](https://nilearn.github.io/modules/generated/nilearn.plotting.plot_glass_brain.html):  Plot 2d projections of an ROI/mask image (by default 3 projections: Frontal, Axial, and Lateral). The brain glass schematics are added on top of the image.

[nilearn.plotting.plot_stat_map](https://nilearn.github.io/modules/generated/nilearn.plotting.plot_stat_map.html): Plot cuts of an ROI/mask image (by default 3 cuts: Frontal, Axial, and Lateral)


#### nltools
[NLTools](https://neurolearn.readthedocs.io/en/latest/) is a Python package for analyzing neuroimaging data. It is the analysis engine powering neuro-learn There are tools to perform data manipulation and analyses such as univariate GLMs, predictive multivariate modeling, and representational similarity analyses.

***

##### Data Classes
###### Adjacency
[Adjacency](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Adjacency) is a class to represent Adjacency matrices as a vector rather than a 2-dimensional matrix. This makes it easier to perform data manipulation and analyses. This tool is particularly useful for performing Representational Similarity Analyses.

[Adjacency.distance](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Adjacency.distance): Calculate distance between images within an Adjacency() instance.

[Adjacency.distance_to_similarity](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Adjacency.distance_to_similarity): Convert distance matrix to similarity matrix

[Adjacency.plot](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Adjacency.plot): Create Heatmap of Adjacency Matrix

[Adjacency.plot_mds](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Adjacency.plot_mds): Plot Multidimensional Scaling

[Adjacency.to_graph](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Adjacency.to_graph): Convert Adjacency into networkx graph. only works on single_matrix for now.


##### Brain_Data
[Brain_Data](https://neurolearn.readthedocs.io/en/latest/api.html#nltools-data-data-types) is a class to represent neuroimaging data in python as a vector rather than a 3-dimensional matrix.This makes it easier to perform data manipulation and analyses. This is the main tool for working with neuroimaging data.

[Brain_Data.append](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.append): Append data to Brain_Data instance

[apply_mask](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.apply_mask): Mask Brain_Data instance

[Brain_Data.copy](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.copy): Create a copy of a Brain_Data instance.

[Brain_Data.decompose](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.decompose): Decompose Brain_Data object

[Brain_Data.distance](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.distance): Calculate distance between images within a Brain_Data() instance.

[Brain_Data.extract_roi](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.extract_roi): Extract activity from mask

[Brain_Data.find_spikes](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.find_spikes): Function to identify spikes from Time Series Data

[Brain_Data.iplot](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.iplot): Create an interactive brain viewer for the current brain data instance.

[Brain_Data.mean](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.mean): Get mean of each voxel across images.

[Brain_Data.plot](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.plot): Create a quick plot of self.data. Will plot each image separately

[Brain_Data.predict](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.predict): Run prediction

[Brain_Data.regress](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.regress
): Run a mass-univariate regression across voxels. Three types of regressions can be run: 1) Standard OLS (default) 2) Robust OLS (heteroscedasticty and/or auto-correlation robust errors), i.e. OLS with “sandwich estimators” 3) ARMA (auto-regressive and moving-average lags = 1 by default; experimental)

[Brain_Data.shape](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.shape): Get images by voxels shape.

[Brain_Data.similarity](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.similaritye): Calculate similarity of Brain_Data() instance with single Brain_Data or Nibabel image

[Brain_Data.smooth](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.smooth): Apply spatial smoothing using nilearn smooth_img()

[Brain_Data.std](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.std): Get standard deviation of each voxel across images.

[Brain_Data.threshold](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.threshold): Threshold Brain_Data instance.

[Brain_Data.to_nifti](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.to_nifti): Convert Brain_Data Instance into Nifti Object

[Brain_Data.ttest](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.ttest): Calculate one sample t-test across each voxel (two-sided)

[Brain_Data.write](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Brain_Data.write): Write out Brain_Data object to Nifti or HDF5 File.

##### Design_Matrix
[Design_Matrix](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Design_Matrix) is a class to represent design matrices with special methods for data processing (e.g. convolution, upsampling, downsampling) and also intelligent and flexible and intelligent appending (e.g. auto-matically keep certain columns or polynomial terms separated during concatentation). It plays nicely with Brain_Data and can be used to build an experimental design to pass to Brain_Data’s X attribute. It is essentially an enhanced pandas df, with extra attributes and methods. Methods always return a new design matrix instance (copy). Column names are always string types. Inherits most methods on pandas DataFrames.

[Design_Matrix.add_dct_basis](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Design_Matrix.add_dct_basis): Adds unit scaled cosine basis functions to Design_Matrix columns, based on spm-style discrete cosine transform for use in high-pass filtering. Does not add intercept/constant. Care is recommended if using this along with .add_poly(), as some columns will be highly-correlated.

[Design_Matrix.add_poly](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Design_Matrix.add_poly): Add nth order Legendre polynomial terms as columns to design matrix. Good for adding constant/intercept to model (order = 0) and accounting for slow-frequency nuisance artifacts e.g. linear, quadratic, etc drifts. Care is recommended when using this with .add_dct_basis() as some columns will be highly correlated.

[Design_Matrix.clean](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Design_Matrix.clean): Method to fill NaNs in Design Matrix and remove duplicate columns based on data values, NOT names. Columns are dropped if they are correlated >= the requested threshold (default = .95). In this case, only the first instance of that column will be retained and all others will be dropped.

[Design_Matrix.convolve](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Design_Matrix.convolve): Perform convolution using an arbitrary function.

[Design_Matrix.heatmap](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Design_Matrix.heatmap): Visualize Design Matrix spm style. Use .plot() for typical pandas plotting functionality. Can pass optional keyword args to seaborn heatmap.

[Design_Matrix.head](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.head.html): This function returns the first n rows for the object based on position. It is useful for quickly testing if your object has the right type of data in it.

[Design_Matrix.info](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.info.html): Print a concise summary of a DataFrame.

[Design_Matrix.vif](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Design_Matrix.vif): Compute variance inflation factor amongst columns of design matrix, ignoring polynomial terms. Much faster that statsmodel and more reliable too. Uses the same method as Matlab and R (diagonal elements of the inverted correlation matrix).

[Design_Matrix.zscore](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.data.Design_Matrix.zscore
): nltools.stats.downsample, but ensures that returned object is a design matrix.


##### Statistics Functions


[stats.fdr](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.stats.fdr): Determine FDR threshold given a p value array and desired false discovery rate q.

[stats.find_spikes](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.stats.find_spikes): Function to identify spikes from fMRI Time Series Data

[stats.fisher_r_to_z](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.stats.fisher_r_to_z): Use Fisher transformation to convert correlation to z score

[stats.one_sample_permutation](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.stats.one_sample_permutation): One sample permutation test using randomization.

[stats.threshold](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.stats.threshold): Threshold test image by p-value from p image

[stats.regress](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.stats.regress): This is a flexible function to run several types of regression models provided X and Y numpy arrays. Y can be a 1d numpy array or 2d numpy array. In the latter case, results will be output with shape 1 x Y.shape[1], in other words fitting a separate regression model to each column of Y.

[stats.zscore](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.stats.zscore): zscore every column in a pandas dataframe or series.

##### Miscellaneous Functions

[SimulateGrid](https://github.com/cosanlab/nltools/blob/master/nltools/simulator.py): A class to simulate signal and noise within 2D grid. Need to update link to nltools documentation once it is built.

[external.hrf.glover_hrf](https://nistats.github.io/modules/generated/nistats.hemodynamic_models.glover_hrf.html): Implementation of the Glover hemodynamic response function (HRF) model.

[datasets.fetch_pain](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.datasets.fetch_pain): Download and loads pain dataset from neurovault

[datasets.fetch_localizer](https://neurolearn.readthedocs.io/en/latest/api.html#nltools.datasets.fetch_localizer): Download and load Brainomics Localizer dataset (94 subjects).




--------------------------------

## Software for advanced fMRI analysis

-  Brain Imaging Analysis Kit (**BrainIAK**) [[GitHub](https://github.com/brainiak/brainiak)] [[Docs](https://brainiak.org/docs)] [[Tutorials](https://brainiak.org/tutorials)] (based on courses taught at Princeton and Yale Universities) and  **paper**: Kumar M et al. BrainIAK tutorials: User-friendly learning materials for advanced fMRI analysis. PLoS Computational Biology 2020;16(1), e1007549  [[link](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1007549)] [[pdf](https://journals.plos.org/ploscompbiol/article/file?id=10.1371/journal.pcbi.1007549&type=printable)]

How to install a separate `brainiak` conda environment and the `BrainIAK` software kit (NOTE: Windows not supported):

```
> conda info --envs<br>
> conda deactivate<br>
> conda create --name brainiak python=3.7<br>
> conda activate brainiak<br>
> conda install -c brainiak -c defaults -c conda-forge brainiak<br>
> conda install -n brainiak ipykernel<br>
> conda install jupyter notebook
> python -m ipykernel install --user --name brainiak --display-name "BRAINIAK"<br>
> conda install -c conda-forge nilearn
> conda install seaborn
> conda install -c conda-forge nxviz
> conda install -c conda-forge deepdish
> conda install -c conda-forge watchdog
```
