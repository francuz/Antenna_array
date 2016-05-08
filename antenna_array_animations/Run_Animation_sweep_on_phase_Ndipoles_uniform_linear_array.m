%Francesco Amato
%amato.fnc@gmail.com - f.amato@gatech.edu
%Antenna Engineering ECE4370, Georgia Tech
%Oct 22 2015



clear all
close all
clc

load('C:\antenna_array_animations\phase_sweep');


figure; 
axes('visible','off'); 
movie(phase_sweep, -3, 8);