function [sum ] = problem10( )
%PROBLEM10 Summary of this function goes here
%   Detailed explanation goes here

sum=0;
u=2000000;
primes=primesieve(u);
for n=1:u
    if primes(n)==1
        sum=sum+n;
    end
end
end

