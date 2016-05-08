----
How to use:
copy this folder in C:\
add the directory to the matlab path by using the following command in matlab: 'addpath c:\antenna_array_animations;'
Open and run Run_Animation*.m files.
----



This folder contains the following files:

-Run_Animation_sweep_on_distance_2dipoles.m
-Run_Animation_sweep_on_phase_Ndipoles_uniform_linear_array.m
	Run these codes to visualize the saved animations



- Generate_Animation_sweep_on_distance_2dipoles_array.m
	to generate and save animation data 'd_sweep.mat' to visualize the effects of distance d (d =[0.1*lambda:4*lambda]) in a 2 element array


- Generate_Animation_sweep_on_phase_Ndipole_uniform_linear_array.m
	to generate and save animation data 'phase_sweep.mat' to visualize the effects of phase shift (beta = [0:180deg]) on a N (10) element linear uniform array (d = 0.5 lambda). 
N and d are user defined variables.

- mmpolar.m
to plot polar data



---
Francesco Amato
amato.fnc@gmail.com - f.amato@gatech.edu
Antenna Engineering ECE4370, Georgia Tech
Oct 22 2015


