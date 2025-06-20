# Dask Cookbook

[![nightly-build](https://github.com/ProjectPythia/dask-cookbook/actions/workflows/nightly-build.yaml/badge.svg)](https://github.com/ProjectPythia/dask-cookbook/actions/workflows/nightly-build.yaml)
[![Binder](https://binder.projectpythia.org/badge_logo.svg)](https://binder.projectpythia.org/v2/gh/ProjectPythia/dask-cookbook/main?labpath=notebooks)
[![DOI](https://zenodo.org/badge/610934658.svg)](https://zenodo.org/badge/latestdoi/610934658)

This Project Pythia Cookbook provides a comprehensive guide to understanding the basic concepts and collections of Dask as well as its integration with Xarray.
Dask is a parallel computing library that allows you to scale your computations to multiple cores or even clusters, while Xarray is a library that enables working with labelled multi-dimensional arrays, with a focus on working with netCDF datasets.

## Motivation

The motivation behind this repository is to provide a clear and concise resource for anyone looking to learn about the basic concepts of Dask and its integration with Xarray. By providing step-by-step tutorials, we hope to make it easy for users to understand the fundamental concepts of parallel computing and distributed data processing, as well as how to apply them in practice using Dask and Dask+Xarray.

## Authors

[Negin Sobhani](@negin513), [Brian Vanderwende](@vanderwb), [Deepak Cherian](@dcherian), and [Ben Kirk](@benkirk)

### Contributors

<a href="https://github.com/NCAR/dask-tutorial/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=NCAR/dask-tutorial" />
</a>
<a href="https://github.com/benkirk/demo_containers/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=benkirk/demo_containers" />
</a>
<a href="https://github.com/ProjectPythia/dask-cookbook/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=ProjectPythia/dask-cookbook" />
</a>

## Note on Content Origin

This cookbook is derived from the extensive material used in the NCAR tutorial, ["Using Dask on HPC systems"](https://github.com/NCAR/dask-tutorial.git), which was held in February 2023. The NCAR tutorial series also includes an in-depth exploration and practical use cases of Dask on HPC systems and best practices for Dask on HPC. For the complete set of NCAR tutorial materials, including these additional insights
on Dask on HPC, please refer to the main NCAR tutorial content available [here](https://ncar.github.io/dask-tutorial/README.html).

## Structure

In the first chapter of this cookbook, we provide step-by-step tutorials on the basic concepts of Dask, including Dask arrays and Dask dataframes, which are powerful tools for parallel computing and distributed data processing. We explain the key differences between these Dask data structures and their counterparts in NumPy and Pandas.

In the second chapter of the repository, we move on to more advanced topics, such as distributed computing and Dask+Xarray integration. We provide examples of how to use Dask+Xarray to efficiently work with large, labelled multi-dimensional datasets.
Finally, we will discuss some best practices regarding Dask+Xarray.

## Running the Notebooks

You can either run the notebook using [Binder](https://binder.projectpythia.org/) or on your local machine.

### Running on Binder

The simplest way to interact with a Jupyter Notebook is through
[Binder](https://binder.projectpythia.org/), which enables the execution of a
[Jupyter Book](https://jupyterbook.org) in the cloud. The details of how this works are not
important for now. All you need to know is how to launch a Pythia
Cookbooks chapter via Binder. Simply navigate your mouse to
the top right corner of the book chapter you are viewing and click
on the rocket ship icon, (see figure below), and be sure to select
“launch Binder”. After a moment you should be presented with a
notebook that you can interact with. I.e. you’ll be able to execute
and even change the example programs. You’ll see that the code cells
have no output at first, until you execute them by pressing
{kbd}`Shift`\+{kbd}`Enter`. Complete details on how to interact with
a live Jupyter notebook are described in [Getting Started with
Jupyter](https://foundations.projectpythia.org/foundations/getting-started-jupyter.html).

### Running on Your Own Machine

If you are interested in running this material locally on your computer, you will need to follow this workflow:

1. Clone the `https://github.com/ProjectPythia/dask-cookbook` repository:

   ```bash
    git clone https://github.com/ProjectPythia/dask-cookbook.git
   ```

1. Move into the `dask-cookbook` directory

   ```bash
   cd dask-cookbook
   ```

1. Create and activate your conda environment from the `environment.yml` file

   ```bash
   conda env create -f environment.yml
   conda activate dask-cookbook
   ```

1. Move into the `notebooks` directory and start up Jupyterlab

   ```bash
   cd notebooks/
   jupyter lab
   ```

### Acknowledgments

- NCAR CISL/CSG Team
- ESDS Initiative
