% subplot(2,1,1);
% t = 0:0.5:7;
t = 0:0.042:7; % step=0.5 for half a day (do not go larger)
                 % step=0.042 for time step of 1 hour
R_m = 0.459*cos(2*pi*t) + 0.7;
plot(t,R_m)
xlim([0 7])
xlabel('t (days)');
ylabel('Max. grazing rate, R_m(t) (day^{-1}');
title('Daily change in max. grazing rate');

% subplot(2,1,2);
% dr_dt = -0.918*pi*sin(2*pi*t);
% plot(t,(1./r).*dr_dt)
% xlim([0 7])
% xlabel('t (days)');
% ylabel('$\displaystyle\frac{1}{R_m(t)}\times\frac{dR_{m}}{dt} (day^{-1})$','interpreter','latex');
% title('Rate of change of max. grazing rate / grazing rate')