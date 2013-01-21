function [ res ] = problem7( )
% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
% we can see that the 6th prime is 13.
% What is the 10 001st prime number?

% lets use the prime number theorm to estimate how many numbers we should
% interrogate

nn=10000;
n=nn;
while true
    n=nn/log(nn);
    n=ceil(n);
    if n > 10* 10001 %let's pad this by a factor of 10
        break;
    end
    nn=nn*10;
end
primes=primesieve(n);
count=0;
for i=1:n
    if primes(i)==1
        count=count+1;
    end
    if count==10001
        res=i;
        break;
    end
end

end

