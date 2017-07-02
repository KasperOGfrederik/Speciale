addpath 'C:\Users\fmunk\Dropbox\Universitet\Speciale\Matlab test'
cd 'C:\Users\fmunk\Dropbox\Model ny version\Resultater sammenligning'

clear all;
clc;
close all;
    
load('GK_closed_ksi.mat', 'oo_')
irf1=oo_.endo_simul;
save irf1
load irf1

load('gk_closed_ksi_gamma.mat', 'oo_')
irf2=oo_.endo_simul;
save irf2
load irf2


% Figur for lukket model
figure
subplot(3,4,1);
    hold on
    plot(1:40,100*irf1(56,1:40))
    plot(1:40,100*irf2(68,1:40))
    title('Opkøb')
    legend('ksi %\Delta fra ss','Opkøb % aktiver','Location','Southeast')
subplot(3,4,2);
    ylabel('%\Delta fra SS')
    hold on
    plot(1:40,100*irf1(41,1:40))
    plot(1:40,100*irf2(41,1:40))
    title('N')
    legend('Uden opkøb','med opkøb','Location','Southeast')
subplot(3,4,3);
    hold on
    plot(1:40,100*irf1(23,1:40))
    plot(1:40,100*irf2(23,1:40))
    title('\phi')
subplot(3,4,4);
    hold on
    plot(1:40,100*irf1(4,1:40))
    plot(1:40,100*irf2(4,1:40))
    title('K')
    
subplot(3,4,5);
    ylabel('%\Delta fra SS')
    hold on
    plot(1:40,400*irf1(30,1:40))
    plot(1:40,400*irf2(30,1:40))
    title('i')    
subplot(3,4,6);
    hold on
    plot(1:40,400*irf1(18,1:40))
    plot(1:40,400*irf2(18,1:40))
    title('R')
subplot(3,4,7);
    hold on
    plot(1:40,400*irf1(32,1:40))
    plot(1:40,400*irf2(32,1:40))
    title('Kreditspænd')
subplot(3,4,8);
    hold on
    plot(1:40,400*irf1(33,1:40))
    plot(1:40,400*irf2(33,1:40))
    title('Statsspænd')
    
subplot(3,4,9);
    ylabel('%\Delta fra SS')
    hold on
    plot(1:40,100*irf1(2,1:40))
    plot(1:40,100*irf2(2,1:40))
    title('Y');    
subplot(3,4,10);
    hold on
    plot(1:40,400*irf1(59,1:40))
    plot(1:40,400*irf2(59,1:40))
    title('\pi');    
subplot(3,4,11);
    hold on
    plot(1:40,100*irf1(7,1:40))
    plot(1:40,100*irf2(7,1:40))
    title('I');    
subplot(3,4,12);
    hold on
    plot(1:40,100*irf1(8,1:40))
    plot(1:40,100*irf2(8,1:40))
    title('C');
% 
% figure
% subplot(3,4,1);
%     ylabel('%\Delta fra SS')
%     hold on
%     plot(1:40,100*irf1(10,1:40))
%     plot(1:40,100*irf2(10,1:40))
%     title('Q');
%     legend('Uden opkøb','med opkøb','Location','Southeast')
% subplot(3,4,2);
%     hold on
%     plot(1:40,100*irf1(26,1:40))
%     plot(1:40,100*irf2(26,1:40))
%     title('Pm');
% subplot(3,4,3);
%     hold on
%     plot(1:40,100*irf1(13,1:40))
%     plot(1:40,100*irf2(13,1:40))
%     title('Z');
% subplot(3,4,4);
%     hold on
%     plot(1:40,100*irf1(5,1:40))
%     plot(1:40,100*irf2(5,1:40))
%     title('Ym');
%     

