%% Script for extracting the highest FFT amplitudes for classification

% empirical parameters
freq_bnd = .6e-3;    % bound in which no peak is expected
maxNumber = 5;        % look for that many maxima
ratio = .8;           % amplitude ratio for separated oscillations
freqInter = .1;       % defines an interval in which the 1/60Hz peak is sought
freqOfInterest = 1/60;% the frequency of interest to search for

fprintf('\n\n############################################################\n')
fprintf('#### Extracting highest FFT amplitudes for onlygoodChR #####\n')
fprintf('############################################################\n\n')

for i = 1:length(onlygoodChR)
    f = onlygoodChR(i).f; % make a local copy (dont work on original data)
    Y = onlygoodChR(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        onlygoodChR(i).maxAmp(j) = m;
        onlygoodChR(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if onlygoodChR(i).maxAmp(2) / onlygoodChR(i).maxAmp(1) < ratio
        onlygoodChR(i).OsciExist = true;
    else
        onlygoodChR(i).OsciExist = false;
    end
    dlmwrite([onlygoodChR(i).fname, '_maxAmps.txt'], [onlygoodChR(i).maxFreq', onlygoodChR(i).maxAmp'], '\t')
    fid = fopen([onlygoodChR(i).fname, '_maxAmps.txt'], 'at');
    if onlygoodChR(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    onlygoodChR(i).foIInmaxAmps = false;
    onlygoodChR(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if onlygoodChR(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if onlygoodChR(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          onlygoodChR(i).foIInmaxAmps = true;
          if j == 1
            onlygoodChR(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if onlygoodChR(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if onlygoodChR(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('## Extracting highest FFT amplitudes for allcontrolsopto ###\n')
fprintf('############################################################\n\n')

for i = 1:length(allcontrolsopto)
    f = allcontrolsopto(i).f; % make a local copy (dont work on original data)
    Y = allcontrolsopto(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        allcontrolsopto(i).maxAmp(j) = m;
        allcontrolsopto(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if allcontrolsopto(i).maxAmp(2) / allcontrolsopto(i).maxAmp(1) < ratio
        allcontrolsopto(i).OsciExist = true;
    else
        allcontrolsopto(i).OsciExist = false;
    end
    dlmwrite([allcontrolsopto(i).fname, '_maxAmps.txt'], [allcontrolsopto(i).maxFreq', allcontrolsopto(i).maxAmp'], '\t')
    fid = fopen([allcontrolsopto(i).fname, '_maxAmps.txt'], 'at');
    if allcontrolsopto(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    allcontrolsopto(i).foIInmaxAmps = false;
    allcontrolsopto(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if allcontrolsopto(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if allcontrolsopto(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          allcontrolsopto(i).foIInmaxAmps = true;
          if j == 1
            allcontrolsopto(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if allcontrolsopto(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if allcontrolsopto(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('# Extracting highest FFT amplitudes for traces_0904_27hpf_baseline #\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_0904_27hpf_baseline)
    f = traces_0904_27hpf_baseline(i).f; % make a local copy (dont work on original data)
    Y = traces_0904_27hpf_baseline(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        traces_0904_27hpf_baseline(i).maxAmp(j) = m;
        traces_0904_27hpf_baseline(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if traces_0904_27hpf_baseline(i).maxAmp(2) / traces_0904_27hpf_baseline(i).maxAmp(1) < ratio
        traces_0904_27hpf_baseline(i).OsciExist = true;
    else
        traces_0904_27hpf_baseline(i).OsciExist = false;
    end
    dlmwrite([traces_0904_27hpf_baseline(i).fname, '_maxAmps.txt'], [traces_0904_27hpf_baseline(i).maxFreq', traces_0904_27hpf_baseline(i).maxAmp'], '\t')
    fid = fopen([traces_0904_27hpf_baseline(i).fname, '_maxAmps.txt'], 'at');
    if traces_0904_27hpf_baseline(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    traces_0904_27hpf_baseline(i).foIInmaxAmps = false;
    traces_0904_27hpf_baseline(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if traces_0904_27hpf_baseline(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if traces_0904_27hpf_baseline(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          traces_0904_27hpf_baseline(i).foIInmaxAmps = true;
          if j == 1
            traces_0904_27hpf_baseline(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if traces_0904_27hpf_baseline(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if traces_0904_27hpf_baseline(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('# Extracting highest FFT amplitudes for traces_0904_30_baseline #\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_0904_30_baseline)
    f = traces_0904_30_baseline(i).f; % make a local copy (dont work on original data)
    Y = traces_0904_30_baseline(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        traces_0904_30_baseline(i).maxAmp(j) = m;
        traces_0904_30_baseline(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if traces_0904_30_baseline(i).maxAmp(2) / traces_0904_30_baseline(i).maxAmp(1) < ratio
        traces_0904_30_baseline(i).OsciExist = true;
    else
        traces_0904_30_baseline(i).OsciExist = false;
    end
    dlmwrite([traces_0904_30_baseline(i).fname, '_maxAmps.txt'], [traces_0904_30_baseline(i).maxFreq', traces_0904_30_baseline(i).maxAmp'], '\t')
    fid = fopen([traces_0904_30_baseline(i).fname, '_maxAmps.txt'], 'at');
    if traces_0904_30_baseline(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    traces_0904_30_baseline(i).foIInmaxAmps = false;
    traces_0904_30_baseline(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if traces_0904_30_baseline(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if traces_0904_30_baseline(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          traces_0904_30_baseline(i).foIInmaxAmps = true;
          if j == 1
            traces_0904_30_baseline(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if traces_0904_30_baseline(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if traces_0904_30_baseline(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('# Extracting highest FFT amplitudes for traces_1904_baseline #\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_1904_baseline)
    f = traces_1904_baseline(i).f; % make a local copy (dont work on original data)
    Y = traces_1904_baseline(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        traces_1904_baseline(i).maxAmp(j) = m;
        traces_1904_baseline(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if traces_1904_baseline(i).maxAmp(2) / traces_1904_baseline(i).maxAmp(1) < ratio
        traces_1904_baseline(i).OsciExist = true;
    else
        traces_1904_baseline(i).OsciExist = false;
    end
    dlmwrite([traces_1904_baseline(i).fname, '_maxAmps.txt'], [traces_1904_baseline(i).maxFreq', traces_1904_baseline(i).maxAmp'], '\t')
    fid = fopen([traces_1904_baseline(i).fname, '_maxAmps.txt'], 'at');
    if traces_1904_baseline(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    traces_1904_baseline(i).foIInmaxAmps = false;
    traces_1904_baseline(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if traces_1904_baseline(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if traces_1904_baseline(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          traces_1904_baseline(i).foIInmaxAmps = true;
          if j == 1
            traces_1904_baseline(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if traces_1904_baseline(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if traces_1904_baseline(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('# Extracting highest FFT amplitudes for traces_2004_Gly_baseline #\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2004_Gly_baseline)
    f = traces_2004_Gly_baseline(i).f; % make a local copy (dont work on original data)
    Y = traces_2004_Gly_baseline(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        traces_2004_Gly_baseline(i).maxAmp(j) = m;
        traces_2004_Gly_baseline(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if traces_2004_Gly_baseline(i).maxAmp(2) / traces_2004_Gly_baseline(i).maxAmp(1) < ratio
        traces_2004_Gly_baseline(i).OsciExist = true;
    else
        traces_2004_Gly_baseline(i).OsciExist = false;
    end
    dlmwrite([traces_2004_Gly_baseline(i).fname, '_maxAmps.txt'], [traces_2004_Gly_baseline(i).maxFreq', traces_2004_Gly_baseline(i).maxAmp'], '\t')
    fid = fopen([traces_2004_Gly_baseline(i).fname, '_maxAmps.txt'], 'at');
    if traces_2004_Gly_baseline(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    traces_2004_Gly_baseline(i).foIInmaxAmps = false;
    traces_2004_Gly_baseline(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if traces_2004_Gly_baseline(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if traces_2004_Gly_baseline(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          traces_2004_Gly_baseline(i).foIInmaxAmps = true;
          if j == 1
            traces_2004_Gly_baseline(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if traces_2004_Gly_baseline(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if traces_2004_Gly_baseline(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('# Extracting highest FFT amplitudes for traces_2004_Hex_baseline #\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2004_Hex_baseline)
    f = traces_2004_Hex_baseline(i).f; % make a local copy (dont work on original data)
    Y = traces_2004_Hex_baseline(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        traces_2004_Hex_baseline(i).maxAmp(j) = m;
        traces_2004_Hex_baseline(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if traces_2004_Hex_baseline(i).maxAmp(2) / traces_2004_Hex_baseline(i).maxAmp(1) < ratio
        traces_2004_Hex_baseline(i).OsciExist = true;
    else
        traces_2004_Hex_baseline(i).OsciExist = false;
    end
    dlmwrite([traces_2004_Hex_baseline(i).fname, '_maxAmps.txt'], [traces_2004_Hex_baseline(i).maxFreq', traces_2004_Hex_baseline(i).maxAmp'], '\t')
    fid = fopen([traces_2004_Hex_baseline(i).fname, '_maxAmps.txt'], 'at');
    if traces_2004_Hex_baseline(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    traces_2004_Hex_baseline(i).foIInmaxAmps = false;
    traces_2004_Hex_baseline(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if traces_2004_Hex_baseline(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if traces_2004_Hex_baseline(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          traces_2004_Hex_baseline(i).foIInmaxAmps = true;
          if j == 1
            traces_2004_Hex_baseline(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if traces_2004_Hex_baseline(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if traces_2004_Hex_baseline(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('# Extracting highest FFT amplitudes for traces_2104_Gly_baseline #\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2104_Gly_baseline)
    f = traces_2104_Gly_baseline(i).f; % make a local copy (dont work on original data)
    Y = traces_2104_Gly_baseline(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        traces_2104_Gly_baseline(i).maxAmp(j) = m;
        traces_2104_Gly_baseline(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if traces_2104_Gly_baseline(i).maxAmp(2) / traces_2104_Gly_baseline(i).maxAmp(1) < ratio
        traces_2104_Gly_baseline(i).OsciExist = true;
    else
        traces_2104_Gly_baseline(i).OsciExist = false;
    end
    dlmwrite([traces_2104_Gly_baseline(i).fname, '_maxAmps.txt'], [traces_2104_Gly_baseline(i).maxFreq', traces_2104_Gly_baseline(i).maxAmp'], '\t')
    fid = fopen([traces_2104_Gly_baseline(i).fname, '_maxAmps.txt'], 'at');
    if traces_2104_Gly_baseline(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    traces_2104_Gly_baseline(i).foIInmaxAmps = false;
    traces_2104_Gly_baseline(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if traces_2104_Gly_baseline(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if traces_2104_Gly_baseline(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          traces_2104_Gly_baseline(i).foIInmaxAmps = true;
          if j == 1
            traces_2104_Gly_baseline(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if traces_2104_Gly_baseline(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if traces_2104_Gly_baseline(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('# Extracting highest FFT amplitudes for traces_2104_Hexa_baseline #\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2104_Hexa_baseline)
    f = traces_2104_Hexa_baseline(i).f; % make a local copy (dont work on original data)
    Y = traces_2104_Hexa_baseline(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        traces_2104_Hexa_baseline(i).maxAmp(j) = m;
        traces_2104_Hexa_baseline(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if traces_2104_Hexa_baseline(i).maxAmp(2) / traces_2104_Hexa_baseline(i).maxAmp(1) < ratio
        traces_2104_Hexa_baseline(i).OsciExist = true;
    else
        traces_2104_Hexa_baseline(i).OsciExist = false;
    end
    dlmwrite([traces_2104_Hexa_baseline(i).fname, '_maxAmps.txt'], [traces_2104_Hexa_baseline(i).maxFreq', traces_2104_Hexa_baseline(i).maxAmp'], '\t')
    fid = fopen([traces_2104_Hexa_baseline(i).fname, '_maxAmps.txt'], 'at');
    if traces_2104_Hexa_baseline(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    traces_2104_Hexa_baseline(i).foIInmaxAmps = false;
    traces_2104_Hexa_baseline(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if traces_2104_Hexa_baseline(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if traces_2104_Hexa_baseline(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          traces_2104_Hexa_baseline(i).foIInmaxAmps = true;
          if j == 1
            traces_2104_Hexa_baseline(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if traces_2104_Hexa_baseline(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if traces_2104_Hexa_baseline(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('# Extracting highest FFT amplitudes for traces_2204_Hexa_baseline #\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2204_Hexa_baseline)
    f = traces_2204_Hexa_baseline(i).f; % make a local copy (dont work on original data)
    Y = traces_2204_Hexa_baseline(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        traces_2204_Hexa_baseline(i).maxAmp(j) = m;
        traces_2204_Hexa_baseline(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if traces_2204_Hexa_baseline(i).maxAmp(2) / traces_2204_Hexa_baseline(i).maxAmp(1) < ratio
        traces_2204_Hexa_baseline(i).OsciExist = true;
    else
        traces_2204_Hexa_baseline(i).OsciExist = false;
    end
    dlmwrite([traces_2204_Hexa_baseline(i).fname, '_maxAmps.txt'], [traces_2204_Hexa_baseline(i).maxFreq', traces_2204_Hexa_baseline(i).maxAmp'], '\t')
    fid = fopen([traces_2204_Hexa_baseline(i).fname, '_maxAmps.txt'], 'at');
    if traces_2204_Hexa_baseline(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    traces_2204_Hexa_baseline(i).foIInmaxAmps = false;
    traces_2204_Hexa_baseline(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if traces_2204_Hexa_baseline(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if traces_2204_Hexa_baseline(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          traces_2204_Hexa_baseline(i).foIInmaxAmps = true;
          if j == 1
            traces_2204_Hexa_baseline(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if traces_2204_Hexa_baseline(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if traces_2204_Hexa_baseline(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

fprintf('\n\n############################################################\n')
fprintf('# Extracting highest FFT amplitudes for traces_3004_Gly_baseline #\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_3004_Gly_baseline)
    f = traces_3004_Gly_baseline(i).f; % make a local copy (dont work on original data)
    Y = traces_3004_Gly_baseline(i).Y; % make a local copy (dont work on original data)
    df = max(f)/length(f); % frequency resolution
    idxlen = ceil(freq_bnd / df); % dont search this far (idx) left and right of max
    for j = 1:maxNumber
        [m, idx] = max(Y);
        traces_3004_Gly_baseline(i).maxAmp(j) = m;
        traces_3004_Gly_baseline(i).maxFreq(j) = f(idx);
        if idx - idxlen <= 0
          Y(1:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        else
          Y(idx-idxlen:idx+idxlen) = 0; % set FFT-vals to 0 (yet taken into account)
        end
    end
    if traces_3004_Gly_baseline(i).maxAmp(2) / traces_3004_Gly_baseline(i).maxAmp(1) < ratio
        traces_3004_Gly_baseline(i).OsciExist = true;
    else
        traces_3004_Gly_baseline(i).OsciExist = false;
    end
    dlmwrite([traces_3004_Gly_baseline(i).fname, '_maxAmps.txt'], [traces_3004_Gly_baseline(i).maxFreq', traces_3004_Gly_baseline(i).maxAmp'], '\t')
    fid = fopen([traces_3004_Gly_baseline(i).fname, '_maxAmps.txt'], 'at');
    if traces_3004_Gly_baseline(i).OsciExist == true
        result = 'YES';
    else
        result = 'NO';
    end
    traces_3004_Gly_baseline(i).foIInmaxAmps = false;
    traces_3004_Gly_baseline(i).foIismaxAmps = false;
    for j = 1:maxNumber
      if traces_3004_Gly_baseline(i).maxFreq(j) > (1-freqInter) * freqOfInterest
        if traces_3004_Gly_baseline(i).maxFreq(j) < (1+freqInter) * freqOfInterest
          traces_3004_Gly_baseline(i).foIInmaxAmps = true;
          if j == 1
            traces_3004_Gly_baseline(i).foIismaxAmps = true;
          end
        end
      end
    end
    %
    fprintf(fid, ['Oscillation with separated frequency: ',result,'.\n']);
    if traces_3004_Gly_baseline(i).foIInmaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) has high Amplittude: NO.\n']);
    end
    if traces_3004_Gly_baseline(i).foIismaxAmps == true
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: YES.\n']);
    else
      fprintf(fid, ['Oscillation of Interest (1/60 Hz) is dominant: NO.\n']);
    end
    fclose(fid);
    clear f Y df idxlen idx m i j
end

clear ratio maxNumber freq_bnd result sze fid ans freqInter freqOfInterest
