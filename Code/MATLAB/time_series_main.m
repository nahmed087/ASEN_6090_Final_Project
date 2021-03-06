%% Time Series Data Analysis

clc; clear all; close all;

%% AB33
global fsize asize
asize = 12;
fsize = 14;
sd = [2009,1,1];
ed = [2012,4,1];
figure
subplot(2,1,1)
TimeSeriesPlot('AB33_timeSeries.mat',sd,ed)
subplot(2,1,2)
SnotelPlot('ab33',sd,ed)
str = sprintf('ab33_snotel.eps');
h = gcf;
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Presentations/final/tex/logan
print(h,'-deps',str);
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Code/MATLAB

sd = [2011,9,3];
ed = [2012,4,29];
figure
subplot(2,1,1)
TimeSeriesPlot('AB33_timeSeries.mat',sd,ed)
subplot(2,1,2)
SnotelPlot('ab33',sd,ed)
str = sprintf('ab33_pos.eps');
h = gcf;
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Presentations/final/tex/logan
print(h,'-deps',str);
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Code/MATLAB
TimeSeriesYearPlot('AB33_timeSeries.mat')
h = gcf;
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Presentations/final/tex/logan
print(h,'-deps','ab33_pos_byYear.eps');
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Code/MATLAB



%% P360
sd = [2009,1,1];
ed = [2012,4,1];
figure
subplot(2,1,1)
TimeSeriesPlot('P360_timeSeries.mat',sd,ed)
subplot(2,1,2)
SnotelPlot('p360',sd,ed)
str = sprintf('p360_snotel.eps');
h = gcf;
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Presentations/final/tex/logan
print(h,'-deps',str);
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Code/MATLAB


sd = [2011,9,3];
ed = [2012,4,29];
figure
subplot(2,1,1)
TimeSeriesPlot('P360_timeSeries.mat',sd,ed)
subplot(2,1,2)
SnotelPlot('p360',sd,ed)
str = sprintf('p360_pos.eps');
h = gcf;
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Presentations/final/tex/logan
print(h,'-deps',str);
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Code/MATLAB


TimeSeriesYearPlot('P360_timeSeries.mat')
h = gcf;
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Presentations/final/tex/logan
print(h,'-deps','p360_pos_byYear.eps');
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Code/MATLAB

%% P455
sd = [2009,1,1];
ed = [2012,4,1];
figure
subplot(2,1,1)
TimeSeriesPlot('P455_timeSeries.mat',sd,ed)
subplot(2,1,2)
SnotelPlot('p455',sd,ed)
str = sprintf('p455_snotel.eps');
h = gcf;
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Presentations/final/tex/logan
print(h,'-deps',str);
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Code/MATLAB


sd = [2011,9,3];
ed = [2012,4,29];
figure
subplot(2,1,1)
TimeSeriesPlot('P455_timeSeries.mat',sd,ed)
subplot(2,1,2)
SnotelPlot('p455',sd,ed)
str = sprintf('p455_pos.eps');
h = gcf;
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Presentations/final/tex/logan
print(h,'-deps',str);
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Code/MATLAB

TimeSeriesYearPlot('P455_timeSeries.mat')
h = gcf;
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Presentations/final/tex/logan
print(h,'-deps','p455_pos_byYear.eps');
cd /Users/Logan/Dropbox/ASEN6090/ASEN_6090_Final_Project/Code/MATLAB
