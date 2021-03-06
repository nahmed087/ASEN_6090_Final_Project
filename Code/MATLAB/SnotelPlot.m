function [] = SnotelPlot(sitename,start_date,end_date)

global fsize asize
str1 = sprintf('%s_2009.csv',sitename);
str2 = sprintf('%s_2010.csv',sitename);
str3 = sprintf('%s_2011.csv',sitename);
str4 = sprintf('%s_2012.csv',sitename);
filename = [str1;str2;str3;str4];
snow_data = [];
cd ../../Data/snow/
for i = 1 : 4
    temp = load(filename(i,:));
    snow_data = [snow_data;temp];
end
cd ../../Code/MATLAB/


dec_date = snow_data(:,2) + snow_data(:,3)/360;
start_date_dec = decyear(start_date);
end_date_dec = decyear(end_date);

% If no input for start_date or end_date 
if nargin < 3
    end_date_dec = dec_dates(end,1);
end
if nargin < 2
    start_date_dec = dec_dates(1,1);
end



% SerialDates = datenum(dates(:,1),dates(:,2),dates(:,3));
% SerialStart = datenum(start_date(1),start_date(2),start_date(3));
% SerialEnd = datenum(end_date(1),end_date(2),end_date(3));

[~,inds] = min(abs(dec_date - start_date_dec));
[~,inde] = min(abs(dec_date - end_date_dec));

dec_date = dec_date(inds:inde,1);
snow_data = snow_data(inds:inde,:);

% plot data
plot(dec_date,snow_data(:,5)*1000,'.','markersize',16);
set(gca,'FontSize',asize)
grid on
axis fill
ylabel('Snow depth (mm)','fontsize',fsize)
xlabel('Year','fontsize',fsize)
% datestr_start = datestr(SerialDates(1),'yyyy-mm-dd');
% datestr_end = datestr(SerialDates(end),'yyyy-mm-dd');
% str = sprintf('Snotel time series for station',sitename);
title('Snotel time series','fontsize',fsize);

end