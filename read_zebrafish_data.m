%% script for reading all measured signals

fprintf('\n ############################################################ \n')
fprintf(' ############ Starting to read all measured data ############ \n')
fprintf(' ############################################################ \n \n')

% folder ''all traces 2004_Gly_baseline''
foldername = 'all traces 2004_Gly_baseline';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_2004_Gly_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t');
  fname_split = strsplit(fname,'.');
  traces_2004_Gly_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**\n'])

% folder ''all traces 2104_Gly_baseline''
foldername = 'all traces 2104_Gly_baseline';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_2104_Gly_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t');
  fname_split = strsplit(fname,'.');
  traces_2104_Gly_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

% folder ''all traces 2104_Hexa_baseline''
foldername = 'all traces 2104_Hexa_baseline';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_2104_Hexa_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t');
  fname_split = strsplit(fname,'.');
  traces_2104_Hexa_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

% folder ''all traces 2204_Hexa_baseline''
foldername = 'all traces 2204_Hexa_baseline';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_2204_Hexa_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t');
  fname_split = strsplit(fname,'.');
  traces_2204_Hexa_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

% folder ''all traces 3004_Gly_baseline''
foldername = 'all traces 3004_Gly_baseline';
fprintf(['\n reading folder **',foldername,'** ...\n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_3004_Gly_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t');
  fname_split = strsplit(fname,'.');
  traces_3004_Gly_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

% folder ''all traces 3004_Gly_baseline''
foldername = 'all traces 3004_Gly_baseline';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_3004_Gly_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t');
  fname_split = strsplit(fname,'.');
  traces_3004_Gly_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

% folder ''onlygoodChR''
foldername = 'onlygoodChR';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  onlygoodChR(i).data = dlmread([foldername,'/',char(fname)],'\t');
  fname_split = strsplit(fname,'.');
  onlygoodChR(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

% folder ''allcontrolsopto''
foldername = 'allcontrolsopto';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  allcontrolsopto(i).data = dlmread([foldername,'/',char(fname)],'\t');
  fname_split = strsplit(fname,'.');
  allcontrolsopto(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

%% and now comes the folder all baselines_21062017
fprintf('\n\n ############################################################ \n')
fprintf(' ######## Jumping to folder: all baselines_21062017 ######### \n')
fprintf(' ############################################################\n\n')

% folder ''all traces 0904_27hpf_baseline''
foldername = 'all baselines_21062017/all traces 0904_27hpf_baseline';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_0904_27hpf_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t',1,0);
  fname_split = strsplit(fname,'.');
  traces_0904_27hpf_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

% folder ''all traces 0904_30_baseline''
foldername = 'all baselines_21062017/all traces 0904_30_baseline';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_0904_30_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t',1,0);
  fname_split = strsplit(fname,'.');
  traces_0904_30_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

% folder ''all traces 1904_baseline''
foldername = 'all baselines_21062017/all traces 1904_baseline';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_1904_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t',1,0);
  fname_split = strsplit(fname,'.');
  traces_1904_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

% folder ''all traces 2004_Hex_baseline''
foldername = 'all baselines_21062017/all traces 2004_Hex_baseline';
fprintf(['\n reading folder **',foldername,'** ... \n'])
filelist = dir([foldername,'/*.txt']);
filenames = {filelist.name};
n = length(filenames);
for i = 1:n
  fname = char(filenames(i));
  traces_2004_Hex_baseline(i).data = dlmread([foldername,'/',char(fname)],'\t',1,0);
  fname_split = strsplit(fname,'.');
  traces_2004_Hex_baseline(i).fname = [foldername,'/',char(fname_split(1))];
end
fprintf(['\n finished reading folder **',foldername,'**.\n'])

fprintf('\n \n ###########################################################\n')
fprintf(' ############# Finished reading all data ###################\n')
fprintf(' ###########################################################\n')

clear filelist filenames foldername i n fname fname_split