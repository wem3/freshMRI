%
% function trial_order = check_times(direc)
%
% Author: Emily Falk
% Edited: Will Moore <wem3@uoregon.edu>
% Last Revision: 05/15/14
%
% Function: check_times
%
% Purpose: cycle through the directories containing existing data,
%          pull out key information used in analysis, create a structure,
%          and save it as part of the original .mat data file
%
% Parameters: direc (directory of behavioral output files)
%
% Return: cleaned data
%
%

function cleaned = check_times(direc)

%get directory info
d = dir(direc);
for i = 1:length(d)
    if d(i).isdir && (~strcmp(d(i).name,'.') && ~strcmp(d(i).name,'..'))
        c(i) = check_times([direc filesep d(i).name]);
    elseif regexp(d(i).name,'\.mat$','ONCE')
        %fprintf('\n*********** cleaning %s\n ***********\n',d(i).name)
        clear run_info
        clear key_presses
        clear analy
        load([direc filesep d(i).name])

        if strcmp(run_info.stimulus_input_file,'Run_1.txt')
            fprintf('%s\t%d\t%d\n',run_info.subject_code,run_info.onsets(end),run_info.durations(end))
            last_onset = run_info.onsets(end);
        end;
    end;
end;

if exist('c')
    for i = i:length(c)
        fprintf('%d\n',c(i));
    end
end

cleaned = last_onset;
