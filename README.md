# DPF_CUDA
DPF filament model CUDA Version

* INTRODUCTION

The DPF code for solving the motion equations of a set of current filaments in a Dense Plasma Focus (DPF) by using the MaxwellBox framework,
that solves the Pure Hyperbollic Maxwell Equations (PHME) with the Galërkin Method (zero order version) and the Strang splitting method.

This version includes friction and helicity calculations

For NVIDIA CUDA ForTran by Jorge A. García Gallardo, CNEA (c) 2025-2026, jorge.gallardo@cab.cnea.gov.ar 

* NOTE
  
 	CUDA™ is a registered trademark of NVIDIA® Corporation.

Files included in this distribution:

	dpf.cuf			: The MaxwellBox Cuda Fortran source code.
	config.cuf		: The hardware-based configuration file for the GPU, Cuda Fortran source code
	filaments.cuf	: The FD Cuda Fortran source code.
	makefile		: the makefile
	test.in			: input example file
	test.plt		: to plot the time-varying variables
	plot.plt		: to plot the electromagnetic fields at the end of the run
	evol.plt		: to plot the evolution in time of a filament
	fil.plt			: to create a 3D plot of the sheath made of all the filaments
	tom.plt			: to plot the "tomographic" views of MaxwellBox fields. Used here for the helicity densities.


* SYSTEM REQUIREMENTS

This code requires NVIDIA CUDA fortran and associated libraries to be installed in the system.
In addition GNUplot is required for the graphics.

* CONFIGURATION

	Set the configuration values of your GPU in the 'config.cuf' file.
	You will need to set these values according to you GPU model.
	For the filament code is convenient to use one SM for each block, so 'blocks' is the SM count;
	and 'coresblock' will be the mumber of cores by each SM.
	Then the max. number of filaments is: maxfils = blocks * coresblock.
	The 'maxnodes' variable is set according to the problem to be solved,
	but a number between 128 and 512 will do it great.

* COMPILATION


In a sh/bash terminal, just run

    make

then the binary 'dpf' should be created.

* USAGE

As a MaxwellBox based application, this code follows the same format as the MaxwellBox.
Please read the MaxwellBox documentation provided in https://github.com/st4r6oy/MaxwellBox for more details.

First, you need to fill a file named <name>.in with the parameters of the system to be simulated.
As an example, a 'test.in' file is provided.

To run, just do:

    ./dpf test.in
  
The run can last from minutes to days according to the input parameters.
Then the program will create many .out files with the coordinates of filament and all the helicity stuff.

Then run:

	gnuplot evol.plt
	gnuplot test.plt
	gnuplot plot.plt
	gnuplot fil.plt
	gnuplot tom.plt

to create the plots of these fields.
