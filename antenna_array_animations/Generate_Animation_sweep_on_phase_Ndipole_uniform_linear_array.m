%Francesco Amato
%amato.fnc@gmail.com - f.amato@gatech.edu
%Antenna Engineering ECE4370, Georgia Tech
%Oct 22 2015

clear all
close all
clc


%N element uniform linear array factor

%user defined variables
N = 4; %array elements
d = 0.5; %distance between two elements, as fraction of lambda



phi = 0:0.01:2*pi;
b = pi/3;
[~, n] = size(b);

for j=1:n
psi = 2*pi*d*sin(phi) + b(j);
AF = sin(N.*psi/2)./sin(psi/2);
gain = abs(AF).^2;
gain = gain/max(gain);
mmpolar(phi, 10*log10(gain), 'RLimit', [-30, 0])
phase_sweep(j) = getframe(gcf);
%close
end

% figure; 
% axes('visible','off'); 
% movie(An_two, -3, 8);

save('C:\antenna_array_animations\phase_sweep', 'phase_sweep');
