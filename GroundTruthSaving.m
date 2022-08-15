length = numel(out.gt_left_RT.Data(1, 1, :));

gt_left_RT = reshape(out.gt_left_RT.Data, 6, length);
gt_right_RT = reshape(out.gt_right_RT.Data, 6, length);