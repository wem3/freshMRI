function files = reprint_txt_files(direc)
%function cleaned = cleaner(direc)
%This script will cycle through the directories containing my existing data
%and will reprint .txt file reports using experiment_output

%get directory info
d = dir(direc);
for i = 1:length(d)
    if d(i).isdir && (~strcmp(d(i).name,'.') && ~strcmp(d(i).name,'..'))
        reprint_txt_files([direc filesep  d(i).name])
        continue;
    end
    
    if regexp(d(i).name,'^moviebackup.*\.mat$','ONCE')
        fprintf('***Printing moviebackup in directory %s***\n',[direc filesep d(i).name])
        fid = fopen([direc filesep d(i).name '_new.txt'],'w');
        fprintf(fid,'Movie backup from: %s\n\n',d(i).name);
        clear key_presses_movie2
        load([direc filesep d(i).name])
        if ~isempty(key_presses_movie2)
            fprintf(fid,'\n\nAll Keys Pressed:\n\nKey\tTime\n');
            for i = 1:length(key_presses_movie2)-1;
                fprintf(fid,'%s\t%.2f\n',key_presses_movie2(i+1).key,key_presses_movie2(i).time);    
            end
        else
             fprintf(fid,'NO KEYS WERE PRESSED DURING THIS RUN\n');
        end;
        fclose(fid);
        continue;
    end
    
    if  regexp(d(i).name,'\.mat$','ONCE') 
        fprintf('\n*********** printing output for %s\n ***********',d(i).name)
        cd(direc)
        experiment_output_old([direc filesep d(i).name],1)
        continue;
    end;
    
end;
    
