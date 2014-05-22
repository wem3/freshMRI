%-----------------------------------------------------------------------
% Job saved on 21-May-2014 17:23:29 by cfg_util (rev $Rev: 5797 $)
% spm SPM - SPM12b (5918)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.file_dir.file_ops.cfg_named_file.name = 'image_defining_space';
matlabbatch{1}.cfg_basicio.file_dir.file_ops.cfg_named_file.files = {{'/Volumes/data/dsn01/templates/canon/MNI152_T1_1mm_brain.nii'}};
matlabbatch{2}.cfg_basicio.file_dir.file_ops.cfg_named_file.name = 'image_to_reslice';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.cfg_named_file.files = {{'/Volumes/crunch/dutch/random/attempt1_attempt2/fx_2/WinLose_TvsP_amplitude/spmT_0001.img'}};
matlabbatch{3}.spm.spatial.coreg.write.ref(1) = cfg_dep('Named File Selector: image_defining_space(1) - Files', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{3}.spm.spatial.coreg.write.source(1) = cfg_dep('Named File Selector: image_to_reslice(1) - Files', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{3}.spm.spatial.coreg.write.roptions.interp = 0;
matlabbatch{3}.spm.spatial.coreg.write.roptions.wrap = [0 0 0];
matlabbatch{3}.spm.spatial.coreg.write.roptions.mask = 0;
matlabbatch{3}.spm.spatial.coreg.write.roptions.prefix = 'MNI_152_1mm_sliced_';
