function F = planktonderivs_diurnal(t,y)
%PLANKTONDERIVS Rate of production of zooplankton and phytoplankton with
%seasonal and diurnal forcing.
%   Function containing two coupled ordinary differential equations that
%   output the rates of production of zooplankton and phytoplankton 
%   populations. This system represents the refractory mechanism of
%   phytoplankton, with the zooplankton acting as the factor that governs
%   phytoplankton's population size.
%   P represents the population of phytoplankton, Z represents that of the
%   zooplankton. r forces the system seasonally, while R_m forces it
%   diurnally.

global K alpha mu gamma A_0
r = A_0*sin(2*pi*t/365 - pi/2) + 0.3;
R_m = 0.459*cos(2*pi*t) + 0.7;
P = y(1);
Z = y(2);

frac = P^2/(alpha^2+P^2);
dP_dt = r*P*(1-P/K) - R_m*Z*frac;
dZ_dt = gamma*R_m*Z*frac - mu*Z;
F = [dP_dt; dZ_dt];
end


