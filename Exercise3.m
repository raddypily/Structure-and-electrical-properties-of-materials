%3h askhsh domhs!
clc
clear
close all

%monadikos statheros arithmos L analoga me to AM 
L = 0.8848;

%diairesh diasthmatos twn sygkentrwsewn twn prosmiksewn me
%thn xrhsh tou logspace

ND = logspace(14,20,50);
NA = logspace(14,20,50);

%synarthseis kinhtikothtwn
 mn = ((5.1.*10.^18*L)+92.*(ND.^0.91))./((3.75.*10.^15)+ND.^0.91);
 mp = ((2.9.*10.^15*L)+(47.7.*NA.^0.76))./((5.86.*10.^12)+NA.^0.76);

%grafikes 
 semilogx(ND, mn, 'r', 'LineWidth', 3)
 hold on 
 semilogx(NA, mp, 'b', 'LineWidth', 3)
 hold off
 set(gca,'fontsize',28)
 xlabel('Doping Concentration N_D or N_A (cm^-^3)')
 ylabel('Mobility (cm^2/V*s)')
 grid on 
 title('Mobility versus Doping' , 'Fontsize', 24)
 legend('Hole Mobility', 'Electron Mobility')
