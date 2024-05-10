
function Q=quality(x,y)  
       m1=mean(mean(x));%calculating mean
       m2=mean(mean(y));
       i1 = x-m1;%calculating the diffeence between each element and mean
       i2 = y-m2;
       v1 = sum(sum(i1.*i1))/(numel(x)-1);%calculating variance
       v2 = sum(sum(i2.*i2))/(numel(x)-1);
       covari = sum(sum((i1.*i2)))/(numel(x)-1);%calculating covariance      
       Q=((4*covari*m1*m2)/((v1+v2)*((m1^2)+(m2^2))));%calculation of image quality index
end