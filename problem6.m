function [ res ] = problem6( )
% The sum of the squares of the first ten natural numbers is,
%
% 1^2 + 2^2 + ... + 10^2 = 385
%
% The square of the sum of the first ten natural numbers is,
%
% (1 + 2 + ... + 10)^2 = 55^2 = 3025
%
% Hence the difference between the sum of the squares of the first ten
% natural numbers and the square of the sum is 3025  385 = 2640.
% Find the difference between the sum of the squares of the first one
% hundred natural numbers and the square of the sum.

sum100naturalnumbers=0;
sumsquare100naturalnumbers=0;
for n=1:100
    sum100naturalnumbers=sum100naturalnumbers+n;
    sumsquare100naturalnumbers=sumsquare100naturalnumbers+(n*n);
end

res=(sum100naturalnumbers * sum100naturalnumbers) - sumsquare100naturalnumbers;

end

