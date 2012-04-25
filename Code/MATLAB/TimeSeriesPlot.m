function [] = TimeSeriesPlot(filename,start_date,end_date)
%% Create a plot from the position
% Load data from data directory
% Inputs
% filename = 'filename.mat'
% start_date = [year,month,day]
% end_date = [year,month,day]
day = [];
year = [];
month = [];
sig =[];
soln = [];

cd ..
cd ../Data
load(filename);
cd ../Code/MATLAB

% Remove zeros
index = find(year>0);
day = double(day(1,index));
month = double(month(1,index));
year = double(year(1,index));
sig = sig(:,index);
soln = soln(:,index);

dates = [year',month',day'];

% If no input for start_date or end_date 
if nargin < 3
    ind = length(year);
    end_date = dates(end,:);
end
if nargin < 2
    start_date = dates(1,:);
end

SerialDates = datenum(dates(:,1),dates(:,2),dates(:,3));
SerialStart = datenum(start_date(1),start_date(2),start_date(3));
SerialEnd = datenum(end_date(1),end_date(2),end_date(3));

% Parse data to only include between start and end date
index = find(SerialDates >= SerialStart & SerialDates <= SerialEnd);

SerialDates = SerialDates(index,1);
dates = dates(index);
sig = sig(:,index);
soln = soln(:,index);

% Plot Data
figure
errorbar(SerialDates,soln(3,:),sig(3,:),'*');
datetick('x','yyyy-mm-dd');
xlabel('Date','fontsize',12)
ylabel('Vertical (mm)','fontsize',12)
datestr_start = datestr(SerialDates(1),'yyyy-mm-dd');
datestr_end = datestr(SerialDates(end),'yyyy-mm-dd');
str = sprintf('Position time series for station %s\nFrom: %s to %s',filename(1:4),datestr_start,datestr_end);
title(str,'fontsize',12);
grid on
h = gcf;
cd Figures/
% datestr_start = datestr(SerialDates(1),'yyyy-mm-dd');
% datestr_end = datestr(SerialDates(end),'yyyy-mm-dd');
str = sprintf('pts_%s_%s_to_%s.png',filename(1:4),datestr_start,datestr_end);
print(h,'-dpng',str);
cd ..

end

