%Francesco Amato
%amato.fnc@gmail.com - f.amato@gatech.edu
%Antenna Engineering ECE4370, Georgia Tech
%Oct 22 2015



clear all 
close all
clc


d = 0.1:0.05:4; %fractions of lambda
[~, N] = size(d);
phi = -pi:0.01:pi;

mov(1:N) = struct('cdata', [], 'colormap', []);

for i = 1:N
    
AF = 2*cos((pi*d(i))*sin(phi)); %array factor of a two-elements array
gain = abs(AF).^2;
gain = gain/max(gain);
mmpolar(phi, 10*log10(gain), 'RLimit', [-20, 0])
d_sweep(i) = getframe(gcf);
close
end


save('C:\antenna_array_animations\d_sweep', 'd_sweep');

% figure; 
% axes('visible','off'); 
% movie(An_one)
