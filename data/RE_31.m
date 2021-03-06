%% TERCER EXPERIMENTO
clc; clear;
%VOLUMEN CONSTANTE SE IDE TEMPERATURA
L3=[5 6 7 8	9 10 11 12 13 14 15];
T31=[300 362 421 481 540 602 661 719 780 838 900];  
T32=[300 362 420 481 543 598 660 717 781 838 900]; 
T33=[300 362 421 483 540 598 659 721 783 842 900];

a1=[T31; T32; T33];
TW1=mean(a1);
MEAN=TW1;
DESVIACION= std(a1);
errAbsoluto= DESVIACION/sqrt(11); %Incertidumbre Experimental
errRelativo= errAbsoluto.*100./MEAN;

L3=L3.*1e-9;
L3=L3.^3;

Volume= L3';
Temperature1=T31';
Temperature2=T32';
Temperature3=T33';
MEAN=MEAN';
DESVIACION=DESVIACION';
errAbsoluto=errAbsoluto';
errRelativo=errRelativo';
table(Volume, Temperature1, Temperature2, Temperature3)
table(MEAN, DESVIACION, errAbsoluto, errRelativo)
figure(3)


plot(TW1, L3,'-*k')

T3A=[300 331 361 391 420 450 270 241 209 181 151];
L3A=[10 11 12 13 14 15 9 8 7 6 5];

hold on;
L3A=L3A.*1e-9;
L3A=L3A.^3;
plot(T3A, L3A,'*r')

T31D=[300 244 212 182 153 307 337 367 396 426 457];
L31D=[9.8 8 7 6 5 10 11 12 13 14 15];
hold on;
L31D=L31D.*1e-9;
L31D=L31D.^3;
plot(T31D, L31D,'-*b')

L=[5 6 7 8 9 10 11 12 13 14 15] ;
T=[320 383 446 510 572 638 702 765 831 891 957];

hold on;
L=L.*1e-9;
L=L.^3;
plot(T,L,'*-')

title('Presión constante');
xlabel('Temperatura [K]');
ylabel('Volúmen [m³]');

