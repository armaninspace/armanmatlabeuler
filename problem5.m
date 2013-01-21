function [product ] = problem5( )
% 2520 is the smallest number that can be divided by each of the numbers
% from 1 to 10 without any remainder. What is the smallest positive number
% that is evenly divisible by all of the numbers from 1 to 20?


primes=primesieve(20);
product=1;
for n=1:20
    if primes(n)
        product=product*n;
    end
end
x=1;
while true
    factor=findNextFactor (product);
    if factor==-1
        break
    end
    product=product*factor;
    x=x+1;
    if (x > 20)
        break;
    end
end
    function [factor] = findNextFactor (number)
        factor=-1;
        for n=2:20
            if mod(number,n) ~=0
                factor=n;
                break
            end
        end
        if factor~=-1
            primes=primesieve(factor);
            for i=2:factor
                if primes(i)==1 && (mod(factor,i)==0)
                    factor=i;
                    break;
                end
            end
        end
    end
end

