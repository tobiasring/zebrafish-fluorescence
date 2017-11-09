function [t, ff0_enh] = returned_enhanced_signal(data)
%[t, ff0] = returned_enhanced_signal(data_in)
%   Function takes the read signals and improves quality using filtering

    fprintf('\n####### extracting relevant information ... ########\n\n')
    if length(data(1,:)) == 6
      % extract interesting information
      frame = data(:,1);
      % fluo = data(:,2);
      % base_cor = data(:,5);
      ff0 = data(:,6);
    elseif length(data(1,:)) == 4
      frame = data(:,1);
      ff0 = data(:,2);
    end
    

    % generate time vector
    frame_dur = .436;
    f_sample = 1/frame_dur;
    n = numel(frame);
    t = frame_dur * linspace(0,n-1,n);
    
    fprintf(' ... done. \n\n')

    fprintf('############## applying filters ... ################ \n \n')
    % filter signal (lowpass or bandpass)
    fcutoffl = .02;
    fcutoffh = .2;
    filterorder = 4;
    wnl = fcutoffl / f_sample;
    wnh = fcutoffh / f_sample;
    %[b, a] = butter(filterorder, wnh, 'low');
    [b, a] = butter(filterorder, [wnl, wnh], 'pass');
    ff0_enh = filtfilt(b, a, ff0);
    fprintf(' ... done. \n\n')
    fprintf('############## finished processing data. ###########\n\n')
end

