%%1h akhsh domhs!
clc
clear
close all

i = 375;
m_0 = 9.11e-31;
m_e = 1.09*(i/1000)*m_0;
m_h = 1.15*(i/1000)*m_0;
h = 1.055e-34;

E_V = 1.6e-19; %% to joules
E_C = 3.52e-19; %% to joules

%%times energeias
E1 = linspace(E_C, 4.83e-19);
E2 = linspace(E_V, 0.3e-19);

%%pyknothta katastasewvn hlektroniwn kai opwn
N_E = 1/(2*(pi^2))*((2*m_e)/(h^2))^(3/2)*(E1-E_C).^(1/2)*(1/(0.625e25)); %% E > EC to eV^(-1)cm^(-3)
N_H = 1/(2*(pi^2))*((2*m_h)/(h^2))^(3/2)*(E_V-E2).^(1/2)*(1/(0.625e25)); %% E < EV to ev^(-1)cm^(-3)

plot(N_E,E1,'b', LineWidth=3);

hold on

plot(N_H, E2,'r', LineWidth=3);

hold off

xlim([0 18e20])
ylim([0 4.83e-19])
set(gca,'fontsize',28)

title('Density States vs Energy')

yline(E_C,"--", LineWidth=2)
yline(E_V,"--", LineWidth=2)

yticks([E_V E_C]);
yticklabels({"E_v", "E_c"})

legend('electrons','holes','Location','east')

xlabel('N(E)(cm^-^3*eV^-^1)')

ylabel('E(eV)')