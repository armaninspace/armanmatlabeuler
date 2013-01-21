function [primes] = primesieve(n)
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
