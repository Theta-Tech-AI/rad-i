% load image
raw_image = imread('../../sample_data/ImageSlice.png');
raw_image = raw_image(:,:,1);
mask = zeros(size(raw_image));

% prepare patch
svd_window_size = 5
patch_window_width = 47
patch_window_height = 41
mask_min_x = 252
mask_min_y = 193
mask_max_x = mask_min_x + patch_window_width - 1
mask_max_y = mask_min_y + patch_window_height - 1
haralick_window_size = svd_window_size * 2 + 1

cropped_array = raw_image(mask_min_y:mask_max_y, mask_min_x:mask_max_x, :);

% show patch
close all;
figure;
subplot(1,2,1);
imagesc(raw_image);
colormap gray;
hold on;
rectangle('Position', ...
  [mask_min_x, mask_min_y, patch_window_width, patch_window_height], ...
  'EdgeColor', 'cyan',
  'LineWidth', 3);
subplot(1,2,2);
imagesc(cropped_array);
colormap gray;
colorbar