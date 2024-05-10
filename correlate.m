function [p,a,c] = correlate(x,h)
a = sum(sum(x))/numel(x);
c = sum(sum(h))/numel(h);
i = (x-a);
j = (h-c);
k = i.*j;
m = sum(sum(k));
p = m/(numel(k)-1);
end