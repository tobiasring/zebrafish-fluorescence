%% Script for processing flourence data of zebra fish
%
% Author: Tobias Ring
%
% Date: 13.07.2017
%
% Description:
%   - Script reads in all relevant data
%   - processes the data using filtering
%   - stores the processed data in ASCII-files
%
%% SOP

clc
clear
close

fprintf('\n\n\n\n ************************************************************\n\n')
fprintf('\n ############################################################ \n')
fprintf(' ##################### Starting Program! #################### \n')
fprintf(' ############################################################ \n')
fprintf('\n\n ************************************************************\n\n')

%% clearing processed files from preceding run

delete_preceeding_run

%% read in the data

read_zebrafish_data

%% process all data (time domain)

process_all_data

%% write time data to file

writing_time_data_to_files

%% Generate frequency-domain signals of excited fishies

compute_frequency_domain_signals

%% write frequency data to file

writing_frequency_data_to_files

%% extract highest fft amplitudes

extract_highest_fft_amplitudes

%% EOP

fprintf('\n\n\n\n ************************************************************\n\n')
fprintf('\n ############################################################ \n')
fprintf(' ##################### Program finished. #################### \n')
fprintf(' ############################################################ \n \n')
fprintf('\n ************************************************************\n\n')

