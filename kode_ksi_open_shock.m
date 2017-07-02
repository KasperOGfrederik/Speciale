addpath 'C:\Users\fmunk\Dropbox\Universitet\Speciale\Matlab test'
cd 'C:\Users\fmunk\Dropbox\Model ny version\Resultater sammenligning'

clear all;
clc;
close all;
    
load('GK_open_ksi.mat', 'oo_')
irf1=oo_.endo_simul;
save irf1
load irf1

load('gk_open_ksi_gamma.mat', 'oo_')
irf2=oo_.endo_simul;
save irf2
load irf2

   

%figur for �ben model
figure

subplot(3,4,1);
    ylabel('% af BNP')
    hold on
    plot(1:40,100*irf1(55,1:40))
    plot(1:40,100*irf2(69,1:40))
    title('Shock')
    legend('ksi %\Delta fra ss','Opk�b % aktiver','Location','Southeast')
    
subplot(3,4,2);
    ylabel('%\Delta fra SS')
    hold on
    plot(1:40,100*irf1(24,1:40))
    plot(1:40,100*irf2(24,1:40))
    title('N')
    legend('Uden opk�b','med opk�b','Location','Southeast') 
subplot(3,4,3);
    hold on
    plot(1:40,100*irf1(23,1:40))
    plot(1:40,100*irf2(23,1:40))
    title('\phi')
subplot(3,4,4);
    hold on
    plot(1:40,100*irf1(20,1:40))
    plot(1:40,100*irf2(20,1:40))
    title('K')
    
subplot(3,4,5);
    ylabel('%\Delta fra SS')
    hold on
    plot(1:40,400*irf1(14,1:40))
    plot(1:40,400*irf2(14,1:40))
    title('i')    
subplot(3,4,6);
    hold on
    plot(1:40,400*irf1(13,1:40))
    plot(1:40,400*irf2(13,1:40))
    title('R')
subplot(3,4,7);
    hold on
    plot(1:40,400*irf1(16,1:40))
    plot(1:40,400*irf2(16,1:40))
    title('Kreditsp�nd')
subplot(3,4,8);
    hold on
    plot(1:40,400*irf1(17,1:40))
    plot(1:40,400*irf2(17,1:40))
    title('Statssp�nd')
    
subplot(3,4,9);
    ylabel('%\Delta fra SS')
    hold on
    plot(1:40,100*irf1(1,1:40))
    plot(1:40,100*irf2(1,1:40))
    title('Y');    
subplot(3,4,10);
    hold on
    plot(1:40,400*irf1(34,1:40))
    plot(1:40,400*irf2(34,1:40))
    title('\pi');    
subplot(3,4,11);
    hold on
    plot(1:40,100*irf1(2,1:40))
    plot(1:40,100*irf2(2,1:40))
    title('I');    
subplot(3,4,12);
    hold on
    plot(1:40,100*irf1(3,1:40))
    plot(1:40,100*irf2(3,1:40))
    title('C');


figure
subplot(3,4,1);
    ylabel('% af BNP')
    hold on
    plot(1:40,100*irf1(44,1:40))
    plot(1:40,100*irf2(44,1:40))
    title('NX')
    legend('Uden opk�b','Med opk�b','Location','Northeast')
subplot(3,4,2);
    ylabel('%\Delta fra SS')
    hold on
    plot(1:40,100*irf1(39,1:40))
    plot(1:40,100*irf2(39,1:40))
    title('FX')
subplot(3,4,3);
    hold on
    plot(1:40,100*irf1(45,1:40))
    plot(1:40,100*irf2(45,1:40))
    title('Ex')
subplot(3,4,4);
    hold on
    plot(1:40,100*irf1(46,1:40))
    plot(1:40,100*irf2(46,1:40))
    title('Im');
    
subplot(3,4,5);
    ylabel('%\Delta fra SS')
    hold on
    plot(1:40,100*irf1(18,1:40))
    plot(1:40,100*irf2(18,1:40))
    title('Q');
subplot(3,4,6);
    hold on
    plot(1:40,100*irf1(37,1:40))
    plot(1:40,100*irf2(37,1:40))
    title('Pm');
subplot(3,4,7);
    hold on
    plot(1:40,100*irf1(41,1:40))
    plot(1:40,100*irf2(41,1:40))
    title('MC');
subplot(3,4,8);
    hold on
    plot(1:40,100*irf1(5,1:40))
    plot(1:40,100*irf2(5,1:40))
    title('Ym');
   
  

