main_folder = 'GroundTruthTrajatories';
path_name = 'C';

length = numel(out.gt_left_RT.Data(1, 1, :));

gt_left_RT = reshape(out.gt_left_RT.Data, 6, length);
gt_right_RT = reshape(out.gt_right_RT.Data, 6, length);

save(fullfile(main_folder, ['StereoGTTrajectories_', path_name, '.mat']), 'gt_left_RT', 'gt_right_RT');