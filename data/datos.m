clc; clear;
%% PRIMER EXPERIMENTO
format SHORTE

T1=[300 320 340 360 380 400 420 440 460 480 500 520]; 
P11=[11.3 12.6 12.9 13.6 15.1 15.6 16.2 17.3 18 18.9 19.8 20.6];
P12=[11.3 12.8 13.1 14.5 15.1 15.6 16.2 17.2 17.8 18.3 19.5 20.5];
P13=[11.3 12.8 13.1	13.9 14.7 15.9 16.3	16.7 18	18.3 19.4 20.6];

p=[P11; P12; P13];
p=mean(p);
p=p.*(1.013e5);
figure(1)
plot(T1,p,'*-r')


T=[300 313 324 347 349 356 345 331 329 324 311 nan];
P=[1192 1278 1313 1373 1418 1439 1347 1291 1285 1284 1246 nan];
P=P.*(1e3);
hold on;
plot(T,P,'*-k')

P1=[1225 1235 1331 1370	1393 1467 1191 1059	1037 974 899 nan];
T12=[300 310 328 336 342 364 291 276 267 248 235 nan];

P1=P1.*(1e3);
hold on;
plot(T12,P1,'*-G')

p=p';
P=P';
P1=P1';
table(p,P,P1)
% la temperatua

%% SEGUNDO EXPERIMENTO
%clc; clear;
L=[15 14 13	12 11 10 9 8 7 6 5]; 
P21=[8 8.3 9.1 9.6 10.5 11.4 13.4 15 17 19.1 23.2];
P22=[8 8.2 8.9 10 10.8 11.3 13.3 14.9 17 19.8 23.6];
P23=[8 8.6 9.3 10 10.5 11.3 12.5 15.1 17.1 19.1 23.7];
P2=[P21; P22; P23];
P2=mean(P2);
P2=P2.*(1.013e5);
figure(2)
plot(L,P2,'*-b')

L2=[10 11 12 13 14 15 9 8 7 6 5];
p2=[1208 1072 941 876 821 768 1301 1467 1681 1961 2340];
hold on;
p2=p2.*(1e3);
plot(L2,p2,'*r')

P23=[1208 1072 941 876 821 768 1301 1467 1681 1961 2340];
L21=[10 11 12 13 14 15 9 8 7 6 5];
hold on;
P23=P23.*(1e3);
plot(L21,P23,'-y')

P2=P2';
p2=p2';
P23=P23';
table(P2,p2,P23)

%% TERCER EXPERIMENTO
clc; clear;
%VOLUMEN CONSTANTE SE IDE TEMPERATURA
L3=[5 6 7 8	9 10 11 12 13 14 15];
T31=[300 362 421 481 540 602 661 719 780 838 900];
T32=[300 362 420 481 543 598 660 717 781 838 900];
T33=[300 362 421 483 540 598 659 721 783 842 900];

TW1=[T31; T32; T33];
TW1=mean(TW1);
figure(3)
plot(L3, TW1,'-*k')

T3A=[300 331 361 391 420 450 270 241 209 181 151];
L3A=[10 11 12 13 14 15 9 8 7 6 5];

hold on;
plot(L3A, T3A,'-*r')

T31D=[300 244 212 182 153 307 337 367 396 426 457];
L31D=[9.8 8 7 6 5 10 11 12 13 14 15];
hold on;
plot(L31D, T31D,'-*b')

%TEMPERATURA CONSTANTE SE MIDE VOLUMEN
T3=[300	320	340	360	380	400	420	440	460	480	500];
L31=[5 5.3 5.7 6 6.3 6.7 7 7.3 7.7 8 8.3];
L32=[5 5.3 5.7 6 6.3 6.7 7 7.3 7.7 8 8.3];
L33=[5 5.3 5.7 6 6.3 6.7 7 7.3 7.7 8 8.3];
L3=[L31; L32; L33];
L3=mean(L3);
figure(4)
plot(T3,L3,'*-r')

T32A=[300 310 320 330 340 350 290 280 270 260 250];
L32A=[10 10.3 10.7 11 11.3 11.7 9.7 9.3 9 8.7 8.3];

hold on;
plot(T32A,L32A,'*-g')

T32D=[300 311 324 335 346 361 288 277 293 303 314];
L32D=[10 10.4 10.8 11.2 11.5 12 9.6 9.2 9.8 10.1 10.5];

hold on;
plot(T32D,L32D,'*-y')
