function F = planktonderivs(t,y)
%PLANKTONDERIVS Rate of production of zooplankton and phytoplankton
%   Function containing two coupled ordinary differential equations that
%   output the rates of production of zooplankton and phytoplankton 
%   populations. This system represents the refractory mechanism of
%   phytoplankton, with the zooplankton acting as the factor that governs
%   phytoplankton's population size.
%   P represents the population of phytoplankton, Z represents that of the
%   zooplankton.

global K r R_m alpha mu gamma
P = y(1);
Z = y(2);

frac = P^2/(alpha^2+P^2);
dP_dt = r*P*(1-P/K) - R_m*Z*frac;
dZ_dt = gamma*R_m*Z*frac - mu*Z;
F = [dP_dt; dZ_dt];
end


