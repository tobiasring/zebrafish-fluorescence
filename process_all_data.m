%% script for going through all data

fprintf('\n ########################################################### \n')
fprintf(' ################ Processing: allcontrolsopto ############## \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(allcontrolsopto)
    [t,ff0] = returned_enhanced_signal(allcontrolsopto(i).data);
    allcontrolsopto(i).t = t;
    allcontrolsopto(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ################### Processing: onlygoodChR ############### \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(onlygoodChR)
    [t,ff0] = returned_enhanced_signal(onlygoodChR(i).data);
    onlygoodChR(i).t = t;
    onlygoodChR(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ######### Processing: traces_2004_Gly_baseline ############ \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(traces_2004_Gly_baseline)
    [t,ff0] = returned_enhanced_signal(traces_2004_Gly_baseline(i).data);
    traces_2004_Gly_baseline(i).t = t;
    traces_2004_Gly_baseline(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ######### Processing: traces_2104_Gly_baseline ############ \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(traces_2104_Gly_baseline)
    [t,ff0] = returned_enhanced_signal(traces_2104_Gly_baseline(i).data);
    traces_2104_Gly_baseline(i).t = t;
    traces_2104_Gly_baseline(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ######### Processing: traces_2104_Hexa_baseline ########### \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(traces_2104_Hexa_baseline)
    [t,ff0] = returned_enhanced_signal(traces_2104_Hexa_baseline(i).data);
    traces_2104_Hexa_baseline(i).t = t;
    traces_2104_Hexa_baseline(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ######### Processing: traces_2204_Hexa_baseline ########### \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(traces_2204_Hexa_baseline)
    [t,ff0] = returned_enhanced_signal(traces_2204_Hexa_baseline(i).data);
    traces_2204_Hexa_baseline(i).t = t;
    traces_2204_Hexa_baseline(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ######### Processing: traces_3004_Gly_baseline ############ \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(traces_3004_Gly_baseline)
    [t,ff0] = returned_enhanced_signal(traces_3004_Gly_baseline(i).data);
    traces_3004_Gly_baseline(i).t = t;
    traces_3004_Gly_baseline(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ####### Jumping to folder: all baselines_21062017########## \n')
fprintf(' ########################################################### \n \n')

fprintf('\n ########################################################### \n')
fprintf(' ###### Processing: all traces 0904_27hpf_baseline ######### \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(traces_0904_27hpf_baseline)
    [t,ff0] = returned_enhanced_signal(traces_0904_27hpf_baseline(i).data);
    traces_0904_27hpf_baseline(i).t = t;
    traces_0904_27hpf_baseline(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ###### Processing: all traces 0904_30_baseline ######### \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(traces_0904_30_baseline)
    [t,ff0] = returned_enhanced_signal(traces_0904_30_baseline(i).data);
    traces_0904_30_baseline(i).t = t;
    traces_0904_30_baseline(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ###### Processing: all traces 1904_baseline ######### \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(traces_1904_baseline)
    [t,ff0] = returned_enhanced_signal(traces_1904_baseline(i).data);
    traces_1904_baseline(i).t = t;
    traces_1904_baseline(i).ff0 = ff0;
end

fprintf('\n ########################################################### \n')
fprintf(' ###### Processing: all traces 2004_Hex_baseline ######### \n')
fprintf(' ########################################################### \n \n')

for i = 1:length(traces_2004_Hex_baseline)
    [t,ff0] = returned_enhanced_signal(traces_2004_Hex_baseline(i).data);
    traces_2004_Hex_baseline(i).t = t;
    traces_2004_Hex_baseline(i).ff0 = ff0;
end



clear i t ff0
