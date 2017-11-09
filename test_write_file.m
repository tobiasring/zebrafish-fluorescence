fname = 'test.txt';

col1 = 'Hallo';
col2 = 'Welt';
t = linspace(0,1,10);
y = sin(2*pi*t);

M = cat(2,t',y');

% dlmwrite(fname,[{col1},{col2}],'\t')

dlmwrite(fname,M,'\t')