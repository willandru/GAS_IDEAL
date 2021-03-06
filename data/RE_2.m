%% SEGUNDO EXPERIMENTO
clc; clear;
L=[15 14 13	12 11 10 9 8 7 6 5]; 
P21=[8 8.3 9.1 9.6 10.5 11.4 13.4 15 17 19.1 23.2];
P22=[8 8.2 8.9 10 10.8 11.3 13.3 14.9 17 19.8 23.6];
P23=[8 8.6 9.3 10 10.5 11.3 12.5 15.1 17.1 19.1 23.7];
A2=[P21; P22; P23];
P2=mean(A2);
DESVIACION= std(A2)'
P2=P2.*(1.013e5);

errAbsoluto= DESVIACION/sqrt(11); %Incertidumbre Experimental
errRelativo= errAbsoluto.*100./P2';
P21=P21.*(1.013e5);
P22=P22.*(1.013e5);
P23=P23.*(1.013e5);

figure(2)

L=L.*1e-9;
L=L.^3
Volume = L'
Presion1=P21';
Presion2=P22';
Presion3=P23';
MEAN=P2';
table(Volume, Presion1, Presion2, Presion3)
table(MEAN, DESVIACION, errAbsoluto, errRelativo)
plot(P2,L,'*-b')

L2=[10 11 12 13 14 15 9 8 7 6 5];
p2=[1208 1072 941 876 821 768 1301 1467 1681 1961 2340];
LA=[5 6 7 8 9 10 11 12 13 14 15];
PA=[2340 1961 1681 1467 1301 1208 1072 941 876 821 768];

hold on;
PA=PA.*(1e3);

LA=LA.*1e-9;
LA=LA.^3;
plot(PA,LA,'--K')

P23=[1208 1072 941 876 821 768 1301 1467 1681 1961 2340];
L21=[10 11 12 13 14 15 9 8 7 6 5];
hold on;

LD=[5 6 7 8 9 10 11 12 13 14 15];
PD=[2340 1961 1681 1467 1301 1208 1072 941 876 821 768];

PD=PD.*(1e3);

LD=LD.*1e-9;
LD=LD.^3;
plot(PD,LD,'*Y')



title('Temperatura constante');
xlabel('Presión [Pa]');
ylabel('Volúmen [m³]');


P2=P2';
p2=p2';
P23=P23';
