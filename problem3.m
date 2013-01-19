function [maxfactor] = problem3( )
% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143 ?

    num=600851475143;
    upper=ceil(sqrt (num));
    primes=getPrimes(upper);
    maxfactor=0;
    for i=1:upper
        if primes(i) && (mod(num,i)==0)
            maxfactor=i;
        end
    end
   
    function [primes] = getPrimes(n) 
        upperlimit=floor(sqrt (n));
        primes=logical(1:n);
        primes(1)=false;
        for i=2:upperlimit
            if primes(i)== true
                jj=0;
                while true 
                    j=i*i + jj*i;
                    if j > n 
                        break
                    end;
                    primes(j)=false;
                    jj=jj+1;
                end
            end
        end
    end
end

