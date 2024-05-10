function [MSE,PSNR] = msepsnr(x,h)
[m,n] = size(x);
MSE = sum(sum(((x-h).^2)))/(m*n);
PSNR = 10*log10((255^2)/MSE);
end