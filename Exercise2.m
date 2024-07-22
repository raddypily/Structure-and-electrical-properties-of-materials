%2h askisi Domis!
clc
clear
close all

%Thermokrasia se Kelvin, xekina apo kati megalitero apo miden 
% (h diairesi me to miden den einai kali edo), exi 80 bimata, mikous 10 K

T = eps:10:1600;
%Statheres endogenwn imiagwgwn se cm^(-3) * K^(-3/2), Si, Ge, GaAs 
%antistoixa

A_Si = 3.2841*10^15;
A_Ge = 1.52*10^15;
A_GaAs = 3.49*10^14;

%Energiako diakeno kathe imiagwgou Si, Ge, GaAs antistixa se
%eV(=1,6x10^19 Joule)

Eg_Si = 1.12;
Eg_Ge = 0.66;
Eg_GaAs = 1.4;

%Stathera Boltzmann se eV/K

kB = 8.62/10^5;

%Endogenis Piknotita

%Exps 

e_Si = exp(-(Eg_Si./(T*(2*kB))));
e_Ge = exp(-(Eg_Ge./(T*(2*kB))));
e_GaAS = exp(-(Eg_GaAs./(T*(2*kB))));

%Calculations
ni_Si = A_Si.*T.^(3/2).*e_Si;
ni_Ge = A_Ge.*T.^(3/2).*e_Ge;
ni_GaAs = A_GaAs.*T.^(3/2).*e_GaAS;

%Creating Diagram
semilogy(T,ni_Si,'Color','#0072BD', 'LineWidth',3) %https://www.mathworks.com/help/matlab/creating_plots/specify-plot-colors.html
hold on
semilogy(T, ni_Ge, 'Color','#D95319','LineWidth',3)
semilogy(T, ni_GaAs, 'Color', '#EDB120', 'LineWidth',3)
hold off

ylim([1 10^20]) %https://www.mathworks.com/help/matlab/creating_plots/change-axis-limits-of-graph.html

grid on

set(gca,'fontsize',28)

title('Intrinsic Density vs Temperature')

legend('Si','Ge','GaAs', 'Location','east')

xlabel('Temperature (K)')

ylabel('n_i (cm^-^3)') % to anakalipsa tixaia


