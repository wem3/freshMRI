function experiment_output_old(MSS_output,PRINT_OUTPUT)

%experiment_output(MSS_output)
%Takes output of MSS and prints a short report to the screen and to a tab
%delimited file


if isempty(MSS_output)
    fprintf('You gave me no file.\n')
    return;
end;

load(MSS_output);

fprintf('\n\nEXPERIMENT INFO for %s, %s\n\n',run_info.script_name,run_info.output_filename);
fprintf('Subject Code = %s\n',run_info.subject_code);
fprintf('Input File = %s\n',run_info.stimulus_input_file);
fprintf('Experiment notes: %s\n\n',run_info.experiment_notes);


if ~isempty(run_info)
    
    fprintf('Trial\tOrder\tOnset\tDur\tRT\tResponse\n\n');

    for i = 1:length(run_info.onsets);
        fprintf('%d\t%d\t%.2f\t%.2f\t%.3f\t%s\n',i,run_info.trial_order(i),run_info.onsets(i),run_info.durations(i),run_info.rt(i),run_info.responses{i});    
    end;
end;


if ~isempty(key_presses)
    fprintf('\n\nAll Keys Pressed:\n\nKey\tTime\tAccompanying Stimulus\n');
    for i = 1:length(key_presses);
        fprintf('%s\t%.2f\t%s\n',key_presses(i).key,key_presses(i).time,key_presses(i).stimulus);    
    end;
end;

if PRINT_OUTPUT
    fid = fopen([run_info.output_filename '.txt'],'w');

    fprintf(fid,'\n\nEXPERIMENT INFO for %s, %s\n\n',run_info.script_name,run_info.output_filename);
    fprintf(fid,'Subject Code = %s\n',run_info.subject_code);
    fprintf(fid,'Input File = %s\n',run_info.stimulus_input_file);
    fprintf(fid,'Experiment notes: %s\n\n',run_info.experiment_notes);
    fprintf(fid,'Trial\tOrder\tOnset\tDur\tRT\tResponse\n\n');

    if ~isempty(run_info)
        for i = 1:length(run_info.onsets);
            fprintf(fid,'%d\t%d\t%.2f\t%.2f\t%.3f\t%s\n',i,run_info.trial_order(i),run_info.onsets(i),run_info.durations(i),run_info.rt(i),run_info.responses{i});      
        end;
    end;

    if ~isempty(key_presses)
        fprintf(fid,'\n\nAll Keys Pressed:\n\nKey\tTime\tAccompanying Stimulus\n');
        for i = 1:length(key_presses);
            fprintf(fid,'%s\t%.2f\t%s\n',key_presses(i).key,key_presses(i).time,key_presses(i).stimulus);    
        end
    end;
    fclose(fid)
end;

