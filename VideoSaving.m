filename_left = 'UE_Simu_left.avi';
filename_right = 'UE_Simu_right.avi';

video_left = VideoWriter(filename_left);
video_right = VideoWriter(filename_right);

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