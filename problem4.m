function [ max ] = problem4( )
% A palindromic number reads the same both ways. The largest palindrome
% made from the product of two 2-digit numbers is 9009 = 91 99.
% Find the largest palindrome made from the product of two 3-digit numbers.

max=0;
for a=900:999
    for b=900:999
        c=num2str(a*b);
        if fliplr(c) == c
            if max < a*b
                max=a*b;
            end
        end
    end
end

