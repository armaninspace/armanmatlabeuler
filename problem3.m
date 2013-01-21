function [maxfactor] = problem3( )
% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143 ?

    num=600851475143;
    upper=ceil(sqrt (num));
    primes=primesieve(upper);
    maxfactor=0;
    for i=1:upper
        if primes(i) && (mod(num,i)==0)
            maxfactor=i;
        end
    end
   
end

