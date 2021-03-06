clc; clear;
%% PRIMER EXPERIMENTO (LEY DE GAY-LUSSAC)
format SHORT

T1=[300 320 340 360 380 400 420 440 460 480 500 520]; 
P11=[11.3 12.6 12.9 13.6 15.1 15.6 16.2 17.3 18 18.9 19.8 20.6];
P12=[11.3 12.8 13.1 14.5 15.1 15.6 16.2 17.2 17.8 18.3 19.5 20.5];
P13=[11.3 12.8 13.1	13.9 14.7 15.9 16.3	16.7 18	18.3 19.4 20.6];

A=[P11; P12; P13];
P=mean(A)
DESVIACION= std(A)'


errAbsoluto= DESVIACION/sqrt(12); %Incertidumbre Experimental
errRelativo= errAbsoluto.*100./P';
P=P.*(1.013e5);
P11=P11.*(1.013e5);
P12=P12.*(1.013e5);
P13=P13.*(1.013e5);

figure(1)
Temperature= T1';
Presion1=P11';
Presion2=P12';
Presion3=P13';
MEAN= P';

table(Temperature, Presion1, Presion2, Presion3)
table(MEAN, DESVIACION, errAbsoluto, errRelativo)


plot(T1,P,'*-r')

TA=[300 313 324 347 349 356];
PA=[1192 1278 1313 1373 1418 1439];
PA=PA.*(1e3);
hold on;
plot(TA,PA,'*-b')

P1D=[1225 1235 1331 1370 1393 1467 1191 1059 1037 974 899 nan];
T1D=[300 310 328 336 342 364 291 276 267 248 235 nan];
t1d=[235 248 267 276    291 300 310 328 336 342 364];
p1d=[899 974 1037 1059  1191 1225 1235 1331 1370 1393 1467];

W=[300 320 340 360];
A= [300 313 324 347 349 356];


p1d=p1d.*(1e3);

TT=[235 248 267 276 T1(1:end)]
PP=[p1d(1:4) P(1:end)]

hold on;
plot(t1d,p1d,'*-y')

polynom= polyfit(TT,PP,1)
y1= polyval(polynom,-10:1:500);

hold on
plot(-10:1:500, y1,'k');

title('Volumen constante');
xlabel('Temperatura [K]');
ylabel('Presion [Pa]');

xL = xlim;
yL = ylim;
line([0 0], yL);  %x-axis
line(xL, [0 0]);