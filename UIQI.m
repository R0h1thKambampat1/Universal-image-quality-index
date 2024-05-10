function quality = UIQI(img1, img2)
block_size = 8;     % block size is considered as 8
N = block_size.^2;  
sum2_filter = ones(block_size);     % creating a window size of ones of 8x8 

img1_sq   = img1.*img1;     % multiplying the matrices element wise
img2_sq   = img2.*img2;     % multiplying the matrices element wise
img12 = img1.*img2;         

img1_sum   = filter2(sum2_filter, img1, 'valid');   
% filter2 does a convolution computed without including zeropadding edges
% This is basically considered as mean to the image 1
img2_sum   = filter2(sum2_filter, img2, 'valid');
% This is basically considered as mean to the image 2
img1_sq_sum = filter2(sum2_filter, img1_sq, 'valid');
% This is considered as variance of img1 + img1_sq
img2_sq_sum = filter2(sum2_filter, img2_sq, 'valid');
% This is considered as variance of img2 + img2_sq
img12_sum = filter2(sum2_filter, img12, 'valid');
% This is considered as covariance of img1&2 + img12
img12_sum_mul = img1_sum.*img2_sum;
% xbar*ybar
img12_sq_sum_mul = img1_sum.*img1_sum + img2_sum.*img2_sum;
% xbar^2+ybar^2
numerator = 4*(N*img12_sum - img12_sum_mul).*img12_sum_mul;
% It is a representation of 4*covariance*xbar*ybar
denominator1 = N*(img1_sq_sum + img2_sq_sum) - img12_sq_sum_mul;
% It is a representation of variance1 + variance2
denominator = denominator1.*img12_sq_sum_mul;

quality_map = numerator./denominator;
% total UIQI function
quality = mean2(quality_map);
% mean of each element in quality map matrix
end