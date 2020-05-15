# Overview
This contains code from ccipd to use as a benchmark/baseline for expected collage results.

# Usage
## Matlab/Octave
```
cd Baseline/matlab;
raw_image = imread('../../sample_data/ImageSlice.png');
mask = imread('../../sample_data/ImageMask.png')
mask = mask(:,:,1);
imshow(raw_image);
```
