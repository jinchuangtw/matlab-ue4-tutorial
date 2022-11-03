main_folder = 'Small_UE_A/';
left_path = [main_folder, 'left'];
right_path = [main_folder, 'right'];

if ~exist(left_path, 'dir')
    mkdir(left_path);
end

if ~exist(right_path, 'dir')
    mkdir(right_path)
end

for i = 1:size(vout_left,4)
      imwrite(vout_left(:,:,:,i), fullfile([main_folder 'left'] ,num2str(i, '%06d')+".png"))
end

for i = 1:size(vout_right,4)
      imwrite(vout_right(:,:,:,i), fullfile([main_folder 'right'] ,num2str(i, '%06d')+".png"))
end