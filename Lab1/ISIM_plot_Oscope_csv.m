clear; % clears memory - useful if you run many scripts in the same session
clf;

%take in data from csv file
tname='pendulumcircuit_Lab1.csv'; % <-input your data file's name! test2.csv was exported from O-scope software with a line of headers
datatable  = readtable(tname);%makes data table with headers

%interpret data as times and voltages
time1  = datatable.t1; % stores the t1 column of data in a variable called time1 
V1    = datatable.ch1; % stores the ch1 column of data in a variable called V1   
time2    = datatable.t2; %stores the t2 column of data in a variable called time2 
V2 = datatable.ch2; %stores the ch2 column of data in a variable called V2   

%plot (you can change this section to suit your plotting needs!)
plot(time1,V1) %plots first channel
xlabel('Time (seconds)'); % add x axis label 
ylabel('Voltage (V)'); % add y axis label 
title('Pendulum Motion');
