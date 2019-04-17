# matlab-multi-body-sim_superbuild

Superbuild for dowloading and installing all the repositories related to the `matlab-multi-body-sim`, a simulator of multi-body system dynamics, kinematics and control.

## Operating system

The code has been developed and tested on Ubuntu 18.04.

## External dependencies

In order to be able to use the `matlab-multi-body-sim` and all the associated repositories, the following software must be installed on your pc:

- [Matlab](https://it.mathworks.com/products/matlab.html), tested only with `R2018a`.
- [Git](https://git-scm.com/), distributed version control system.
- [CMake](https://cmake.org/), cross-platform compiler, tested with V3.0.

The following dependencies are also required: **NOTE: they will be included in the superbuild in a future release.**

- The [iDyntree](https://github.com/robotology/idyntree) library. To install `iDyntree` and its dependencies, refer to the [iDyntree README](https://github.com/robotology/idyntree#installation). When compiling `iDyntree`, it is required to set the option `IDYNTREE_USES_MATLAB` to `ON`. In order to use the [iDyntree bindings](https://github.com/robotology/idyntree/tree/master/bindings/matlab), and the [iDyntree wrappers](https://github.com/robotology/idyntree/tree/master/bindings/matlab/+iDynTreeWrappers) for Matlab, add to the Matlab path the `path/where/the/iDyntree/generated/mex/file/is`.

- **Optional**: for using the [iDyntree visualizer](https://github.com/robotology/idyntree/blob/master/src/visualization/src/Visualizer.cpp), it is also required to install the [Irrlicht](http://irrlicht.sourceforge.net/) library. To install the library on Ubuntu 18.04, just run on a terminal:

   ```
   sudo apt-get install libirrlicht-dev
   ```

- **Optional**: an external library of Matlab function for multi-body system dynamics, kinematics and control is available inside [whole-body-controllers](https://github.com/robotology/whole-body-controllers). To download the library, follow the instructions in the [whole-body-controllers README](https://github.com/robotology/whole-body-controllers/blob/master/README.md#installation-and-usage).

## Installation and usage

### Ubuntu 18.04

`git clone` the repository on your pc. Then, enter in the dowloaded folder, open a terminal and run:

```
mkdir build
cd build
ccmake ../
```

An interactive GUI with several options will appear on the terminal. To understand how to set the options according to your preferences, refer to the [repositories overview](https://github.com/gabrielenava/matlab-multi-body-sim_superbuild/blob/master/README.md#repositories-overview) section. When the options have been set, type `c` and then `g`. Finally, run `make` on the terminal.

## Repositories overview

#### Default repositories to be downloaded: 

- [matlab-multi-body-sim_core](https://github.com/gabrielenava/matlab-multi-body-sim_core), see also the associated [README](https://github.com/gabrielenava/matlab-multi-body-sim_core/blob/master/README.md).

#### Repos downloaded with option `USE_MODELS = ON`

- [matlab-multi-body-sim_models](https://github.com/gabrielenava/matlab-multi-body-sim_models), see also the associated [README](https://github.com/gabrielenava/matlab-multi-body-sim_models/blob/master/README.md).

#### Repos downloaded with option `USE_APP = ON`

- [matlab-multi-body-sim_app](https://github.com/gabrielenava/matlab-multi-body-sim_app), see also the associated [README](https://github.com/gabrielenava/matlab-multi-body-sim_app/blob/master/README.md).

#### Repos downloaded with option `USE_EXTERNAL = ON`

- [FEX-function_handle](https://github.com/rodyo/FEX-function_handle), see also associated [doc](https://github.com/rodyo/FEX-function_handle/blob/master/function_handle.m).
- [qpOASES](https://github.com/robotology-dependencies/qpOASES), see also the associated [README](https://github.com/robotology-dependencies/qpOASES/blob/master/README).
