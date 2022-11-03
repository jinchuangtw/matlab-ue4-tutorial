main_folder = 'Videos/Small_UE_A';

if ~exist(main_folder, 'dir')
    mkdir(main_folder);
end

video_left = VideoWriter(fullfile(main_folder, 'left'), 'MPEG-4');
video_right = VideoWriter(fullfile(main_folder, 'right'), 'MPEG-4');

open(video_left)
for i = 1:size(vout_left, 4)
  writeVideo(video_left, vout_left(:, :, :, i))
end
close(video_left)

open(video_right)
for i = 1:size(vout_right, 4)
  writeVideo(video_right, vout_right(:, :, :, i))
end
close(video_right)