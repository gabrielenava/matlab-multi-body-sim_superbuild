# Multi-Body Simulator (MBS) Superbuild

Superbuild for dowloading and installing all the repositories related to the `multi-body simulator`, a simulator of multi-body system dynamics, kinematics and control based on [iDyntree](https://github.com/robotology/idyntree) and [Matlab](https://it.mathworks.com/products/matlab.html).


## Operating system

The code has been developed and tested on Ubuntu 18.04 LTS.


## External dependencies

In order to be able to use the `multi-body simulator` and all the associated repositories, the following software must be installed on your pc:

- [Matlab](https://it.mathworks.com/products/matlab.html), tested with `R2018a`.
- [Git](https://git-scm.com/), distributed version control system.
- [CMake](https://cmake.org/), cross-platform compiler, tested with V3.0.

The following dependencies are also required: **NOTE: they may be included in the superbuild in a future release.**

- The [iDyntree](https://github.com/robotology/idyntree) library. To install `iDyntree` and its dependencies, refer to the [iDyntree README](https://github.com/robotology/idyntree#installation). When compiling `iDyntree`, it is required to set the option `IDYNTREE_USES_MATLAB` to `ON`. In order to use the [iDyntree bindings](https://github.com/robotology/idyntree/tree/master/bindings/matlab), and the [iDyntree wrappers](https://github.com/robotology/idyntree/tree/master/bindings/matlab/+iDynTreeWrappers) for Matlab, add to the Matlab path the `path/where/the/iDyntree/generated/mex/file/is`.

- **Optional**: for using the [iDyntree visualizer](https://github.com/robotology/idyntree/blob/master/src/visualization/src/Visualizer.cpp), it is also required to install the [Irrlicht](http://irrlicht.sourceforge.net/) library. To install the library on Ubuntu 18.04, just run on a terminal:

   ```
   sudo apt-get install libirrlicht-dev
   ```

- **Optional**: an external library of Matlab function for multi-body system dynamics, kinematics and control is available inside [whole-body-controllers](https://github.com/robotology/whole-body-controllers). To download the library, follow the instructions in the [whole-body-controllers README](https://github.com/robotology/whole-body-controllers/blob/master/README.md#installation-and-usage).


## Installation and usage

### Ubuntu 18.04

`git clone` the repository on your pc. Then, enter in the cloned folder, open a terminal and run:

```
mkdir build
cd build
ccmake ../
```

An interactive cmake GUI with several options will appear on the terminal. To understand how to set the options according to your preferences, refer to the next section [repositories overview](https://github.com/gabrielenava/matlab-multi-body-sim_superbuild/blob/master/README.md#repositories-overview). When the options have been set, type `c` and then `g`. Finally, run `make` on the terminal.

#### Configure MATLAB path

To properly configure the MATLAB path to mbs core functions, follow the instructions in the [mbs_core README](https://github.com/gabrielenava/mbs_core#installation-and-usage).

## Repositories overview

### Default repositories to be downloaded: 

- [mbs_core](https://github.com/gabrielenava/mbs_core), see the associated [README](https://github.com/gabrielenava/mbs_core/blob/master/README.md).
- [FEX-function_handle](https://github.com/rodyo/FEX-function_handle), see the associated [doc](https://github.com/rodyo/FEX-function_handle/blob/master/function_handle.m).

### Repos downloaded with the option `USE_MODELS = ON`

- [mbs_models](https://github.com/gabrielenava/mbs_models), see the associated [README](https://github.com/gabrielenava/mbs_models/blob/master/README.md).

### Repos downloaded with the option `USE_APP = ON`

- [mbs_app](https://github.com/gabrielenava/mbs_app), see the associated [README](https://github.com/gabrielenava/mbs_app/blob/master/README.md).

### Repos downloaded with the option `USE_EXTERNAL = ON`

- [FEX-minimize](https://github.com/rodyo/FEX-minimize), see the associated [doc](https://github.com/rodyo/FEX-minimize/blob/master/minimize.m).
- [qpOASES](https://github.com/robotology-dependencies/qpOASES), see the associated [README](https://github.com/robotology-dependencies/qpOASES/blob/master/README).

## Mantainer

Gabriele Nava ([@gabrielenava](https://github.com/gabrielenava)).
