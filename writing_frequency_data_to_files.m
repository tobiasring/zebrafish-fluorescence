%% writing processed data to files


 fprintf('\n\n############################################################\n')
 fprintf('################# Writing data allcontrolsopto #############\n')
 fprintf('############################################################\n\n')
 
 for i = 1:length(allcontrolsopto)
     M = cat(2,allcontrolsopto(i).f',allcontrolsopto(i).Y);
     dlmwrite([allcontrolsopto(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,allcontrolsopto(i).f',allcontrolsopto(i).Y_unfilt);
     dlmwrite([allcontrolsopto(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('############## Done writing data allcontrolsopto ###########\n')

fprintf('\n\n############################################################\n')
fprintf('################## Writing data onlygoodChR ################\n')
fprintf('############################################################\n\n')

for i = 1:length(onlygoodChR)
    M = cat(2,onlygoodChR(i).f',onlygoodChR(i).Y);
    dlmwrite([onlygoodChR(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,onlygoodChR(i).f',onlygoodChR(i).Y_unfilt);
     dlmwrite([onlygoodChR(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
end

fprintf('################ Done writing data onlygoodChR ##############\n')

 fprintf('\n\n##############################################################\n')
 fprintf('########### Writing data traces_2004_Gly_baseline ############\n')
 fprintf('##############################################################\n\n')
 
 for i = 1:length(traces_2004_Gly_baseline)
     M = cat(2,traces_2004_Gly_baseline(i).f',traces_2004_Gly_baseline(i).Y);
     dlmwrite([traces_2004_Gly_baseline(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,traces_2004_Gly_baseline(i).f',traces_2004_Gly_baseline(i).Y_unfilt);
     dlmwrite([traces_2004_Gly_baseline(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('######## Done writing data traces_2004_Gly_baseline ##########\n')
 
 fprintf('\n\n##############################################################\n')
 fprintf('############# Writing data traces_2104_Gly_baseline ##########\n')
 fprintf('##############################################################\n\n')
 
 for i = 1:length(traces_2104_Gly_baseline)
     M = cat(2,traces_2104_Gly_baseline(i).f',traces_2104_Gly_baseline(i).Y);
     dlmwrite([traces_2104_Gly_baseline(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,traces_2104_Gly_baseline(i).f',traces_2104_Gly_baseline(i).Y_unfilt);
     dlmwrite([traces_2104_Gly_baseline(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('######## Done writing data traces_2104_Gly_baseline ##########\n')
 
 fprintf('\n\n##############################################################\n')
 fprintf('########### Writing data traces_2104_Hexa_baseline ###########\n')
 fprintf('##############################################################\n\n')
 
 for i = 1:length(traces_2104_Hexa_baseline)
     M = cat(2,traces_2104_Hexa_baseline(i).f',traces_2104_Hexa_baseline(i).Y);
     dlmwrite([traces_2104_Hexa_baseline(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,traces_2104_Hexa_baseline(i).f',traces_2104_Hexa_baseline(i).Y_unfilt);
     dlmwrite([traces_2104_Hexa_baseline(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('######### Done writing data traces_2104_Hexa_baseline ########\n')
 
 fprintf('\n\n##############################################################\n')
 fprintf('########## Writing data traces_2204_Hexa_baseline ############\n')
 fprintf('##############################################################\n\n')
 
 for i = 1:length(traces_2204_Hexa_baseline)
     M = cat(2,traces_2204_Hexa_baseline(i).f',traces_2204_Hexa_baseline(i).Y);
     dlmwrite([traces_2204_Hexa_baseline(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,traces_2204_Hexa_baseline(i).f',traces_2204_Hexa_baseline(i).Y_unfilt);
     dlmwrite([traces_2204_Hexa_baseline(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('######## Done writing data traces_2204_Hexa_baseline #########\n')
 
 fprintf('\n\n##############################################################\n')
 fprintf('############ Writing data traces_3004_Gly_baseline ###########\n')
 fprintf('##############################################################\n\n')
 
 for i = 1:length(traces_3004_Gly_baseline)
     M = cat(2,traces_3004_Gly_baseline(i).f',traces_3004_Gly_baseline(i).Y);
     dlmwrite([traces_3004_Gly_baseline(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,traces_3004_Gly_baseline(i).f',traces_3004_Gly_baseline(i).Y_unfilt);
     dlmwrite([traces_3004_Gly_baseline(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('######### Done writing data traces_3004_Gly_baseline #########\n')
 
 fprintf('\n\n##############################################################\n')
 fprintf('########### Writing data traces_0904_27hpf_baseline ##########\n')
 fprintf('##############################################################\n\n')
 
 for i = 1:length(traces_0904_27hpf_baseline)
     M = cat(2,traces_0904_27hpf_baseline(i).f',traces_0904_27hpf_baseline(i).Y);
     dlmwrite([traces_0904_27hpf_baseline(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,traces_0904_27hpf_baseline(i).f',traces_0904_27hpf_baseline(i).Y_unfilt);
     dlmwrite([traces_0904_27hpf_baseline(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('######## Done writing data traces_0904_27hpf_baseline ########\n')
 
 fprintf('\n\n##############################################################\n')
 fprintf('########### Writing data traces_0904_30_baseline #############\n')
 fprintf('##############################################################\n\n')
 
 for i = 1:length(traces_0904_30_baseline)
     M = cat(2,traces_0904_30_baseline(i).f',traces_0904_30_baseline(i).Y);
     dlmwrite([traces_0904_30_baseline(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,traces_0904_30_baseline(i).f',traces_0904_30_baseline(i).Y_unfilt);
     dlmwrite([traces_0904_30_baseline(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('######## Done writing data traces_0904_30_baseline ########\n')
 
 fprintf('\n\n##############################################################\n')
 fprintf('############# Writing data traces_1904_baseline #############\n')
 fprintf('##############################################################\n\n')
 
 for i = 1:length(traces_1904_baseline)
     M = cat(2,traces_1904_baseline(i).f',traces_1904_baseline(i).Y);
     dlmwrite([traces_1904_baseline(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,traces_1904_baseline(i).f',traces_1904_baseline(i).Y_unfilt);
     dlmwrite([traces_1904_baseline(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('########## Done writing data traces_1904_baseline ##########\n')
 
 fprintf('\n\n##############################################################\n')
 fprintf('############ Writing data traces_2004_Hex_baseline ###########\n')
 fprintf('##############################################################\n\n')
 
 for i = 1:length(traces_2004_Hex_baseline)
     M = cat(2,traces_2004_Hex_baseline(i).f',traces_2004_Hex_baseline(i).Y);
     dlmwrite([traces_2004_Hex_baseline(i).fname,'_freq_domain.txt'],M,'\t')
     M = cat(2,traces_2004_Hex_baseline(i).f',traces_2004_Hex_baseline(i).Y_unfilt);
     dlmwrite([traces_2004_Hex_baseline(i).fname,'_freq_domain_unfilt.txt'],M,'\t')
 end
 
 fprintf('######## Done writing data traces_2004_Hex_baseline ########\n')

clear i M