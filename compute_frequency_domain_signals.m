%% compute frequency domain signals

fprintf('\n\n############################################################\n')
fprintf('############### Computing FFT for onlygoodChR ##############\n')
fprintf('############################################################\n\n')

for i = 1:length(onlygoodChR)
    [f, Y] = fft_analysis(onlygoodChR(i).t, onlygoodChR(i).ff0);
    onlygoodChR(i).f = f;
    onlygoodChR(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(onlygoodChR(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(onlygoodChR(i).t, onlygoodChR(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(onlygoodChR(i).t, onlygoodChR(i).data(:,2));
    end
    onlygoodChR(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('############## Computing FFT for allcontrolsopto ###########\n')
fprintf('############################################################\n\n')

for i = 1:length(allcontrolsopto)
    [f, Y] = fft_analysis(allcontrolsopto(i).t, allcontrolsopto(i).ff0);
    allcontrolsopto(i).f = f;
    allcontrolsopto(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(allcontrolsopto(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(allcontrolsopto(i).t, allcontrolsopto(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(allcontrolsopto(i).t, allcontrolsopto(i).data(:,2));
    end
    allcontrolsopto(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('######## Computing FFT for traces_2004_Gly_baseline ########\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2004_Gly_baseline)
    [f, Y] = fft_analysis(traces_2004_Gly_baseline(i).t, traces_2004_Gly_baseline(i).ff0);
    traces_2004_Gly_baseline(i).f = f;
    traces_2004_Gly_baseline(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(traces_2004_Gly_baseline(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(traces_2004_Gly_baseline(i).t, traces_2004_Gly_baseline(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(traces_2004_Gly_baseline(i).t, traces_2004_Gly_baseline(i).data(:,2));
    end
    traces_2004_Gly_baseline(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('######## Computing FFT for traces_2104_Gly_baseline ########\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2104_Gly_baseline)
    [f, Y] = fft_analysis(traces_2104_Gly_baseline(i).t, traces_2104_Gly_baseline(i).ff0);
    traces_2104_Gly_baseline(i).f = f;
    traces_2104_Gly_baseline(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(traces_2104_Gly_baseline(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(traces_2104_Gly_baseline(i).t, traces_2104_Gly_baseline(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(traces_2104_Gly_baseline(i).t, traces_2104_Gly_baseline(i).data(:,2));
    end
    traces_2104_Gly_baseline(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('######## Computing FFT for traces_2104_Hexa_baseline ########\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2104_Hexa_baseline)
    [f, Y] = fft_analysis(traces_2104_Hexa_baseline(i).t, traces_2104_Hexa_baseline(i).ff0);
    traces_2104_Hexa_baseline(i).f = f;
    traces_2104_Hexa_baseline(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(traces_2104_Hexa_baseline(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(traces_2104_Hexa_baseline(i).t, traces_2104_Hexa_baseline(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(traces_2104_Hexa_baseline(i).t, traces_2104_Hexa_baseline(i).data(:,2));
    end
    traces_2104_Hexa_baseline(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('######## Computing FFT for traces_2204_Hexa_baseline ########\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2204_Hexa_baseline)
    [f, Y] = fft_analysis(traces_2204_Hexa_baseline(i).t, traces_2204_Hexa_baseline(i).ff0);
    traces_2204_Hexa_baseline(i).f = f;
    traces_2204_Hexa_baseline(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(traces_2204_Hexa_baseline(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(traces_2204_Hexa_baseline(i).t, traces_2204_Hexa_baseline(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(traces_2204_Hexa_baseline(i).t, traces_2204_Hexa_baseline(i).data(:,2));
    end
    traces_2204_Hexa_baseline(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('######## Computing FFT for traces_3004_Gly_baseline ########\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_3004_Gly_baseline)
    [f, Y] = fft_analysis(traces_3004_Gly_baseline(i).t, traces_3004_Gly_baseline(i).ff0);
    traces_3004_Gly_baseline(i).f = f;
    traces_3004_Gly_baseline(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(traces_3004_Gly_baseline(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(traces_3004_Gly_baseline(i).t, traces_3004_Gly_baseline(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(traces_3004_Gly_baseline(i).t, traces_3004_Gly_baseline(i).data(:,2));
    end
    traces_3004_Gly_baseline(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('######## Computing FFT for traces_0904_27hpf_baseline ########\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_0904_27hpf_baseline)
    [f, Y] = fft_analysis(traces_0904_27hpf_baseline(i).t, traces_0904_27hpf_baseline(i).ff0);
    traces_0904_27hpf_baseline(i).f = f;
    traces_0904_27hpf_baseline(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(traces_0904_27hpf_baseline(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(traces_0904_27hpf_baseline(i).t, traces_0904_27hpf_baseline(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(traces_0904_27hpf_baseline(i).t, traces_0904_27hpf_baseline(i).data(:,2));
    end
    traces_0904_27hpf_baseline(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('######## Computing FFT for traces_0904_30_baseline ########\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_0904_30_baseline)
    [f, Y] = fft_analysis(traces_0904_30_baseline(i).t, traces_0904_30_baseline(i).ff0);
    traces_0904_30_baseline(i).f = f;
    traces_0904_30_baseline(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(traces_0904_30_baseline(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(traces_0904_30_baseline(i).t, traces_0904_30_baseline(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(traces_0904_30_baseline(i).t, traces_0904_30_baseline(i).data(:,2));
    end
    traces_0904_30_baseline(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('######## Computing FFT for traces_1904_baseline ########\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_1904_baseline)
    [f, Y] = fft_analysis(traces_1904_baseline(i).t, traces_1904_baseline(i).ff0);
    traces_1904_baseline(i).f = f;
    traces_1904_baseline(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(traces_1904_baseline(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(traces_1904_baseline(i).t, traces_1904_baseline(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(traces_1904_baseline(i).t, traces_1904_baseline(i).data(:,2));
    end
    traces_1904_baseline(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

fprintf('\n\n############################################################\n')
fprintf('######## Computing FFT for traces_2004_Hex_baseline ########\n')
fprintf('############################################################\n\n')

for i = 1:length(traces_2004_Hex_baseline)
    [f, Y] = fft_analysis(traces_2004_Hex_baseline(i).t, traces_2004_Hex_baseline(i).ff0);
    traces_2004_Hex_baseline(i).f = f;
    traces_2004_Hex_baseline(i).Y = 2*abs(Y); % store just real-valued results
    sze = size(traces_2004_Hex_baseline(i).data);
    if sze(2) == 6
        [~, Y] = fft_analysis(traces_2004_Hex_baseline(i).t, traces_2004_Hex_baseline(i).data(:,6));
    elseif sze(2) == 4
        [~, Y] = fft_analysis(traces_2004_Hex_baseline(i).t, traces_2004_Hex_baseline(i).data(:,2));
    end
    traces_2004_Hex_baseline(i).Y_unfilt = 2*abs(Y);
end

fprintf('################ finished computing FFT ##############\n')

clear i f Y