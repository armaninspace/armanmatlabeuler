function [ ] = problem14( )
% The following iterative sequence is defined for the set of positive
% integers:
%
% n  n/2 (n is even)
% n  3n + 1 (n is odd)
%
% Using the rule above and starting with 13, we generate the following
% sequence:
%
% 13  40  20  10  5  16  8  4  2  1
% It can be seen that this sequence (starting at 13 and finishing at 1)
% contains 10 terms. Although it has not been proved yet (Collatz Problem),
% it is thought that all starting numbers finish at 1.
%
% Which starting number, under one million, produces the longest chain?
%
% NOTE: Once the chain starts the terms are allowed to go above one
% million.

maxlen=0;
for n=1:1000000
    len=collatz (n);
    if len>maxlen
        maxlen=len;
        fprintf(1,'%d %d \n', n, len);
    end
end


    function [res] = collatz (num)
        res=1;
        while true
            if num==1
                break;
            elseif mod(num,2) == 0
                num=num/2;
            else
                num=(3*num)+1;
            end
            res=res+1;
        end
    end

end

