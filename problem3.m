function [ ] = problem3( )
% The prime factors of 13195 are 5, 7, 13 and 29.
% What is the largest prime factor of the number 600851475143 ?

% 2 3 5 7 



% Input: an integer n > 1
 
% Let A be an array of Boolean values, indexed by integers 2 to n,
% initially all set to true.
 
% for i = 2, 3, 4, ..., ?n :
%   if A[i] is true:
%     for j = i2, i2+i, i2+2i, ..., n:
%       A[j] := false
 
% Now all i such that A[i] is true are prime.

    %upperlimit=ceil(sqrt (600851475143));
    upperlimit=ceil(sqrt (10));
    A=logical(1:upperlimit);
    
    
    %A=A*0;
    for i=2:upperlimit
        disp('xxx');
        if A(i)== true
            n=0;
            while true 
                i_=i*i + n*i
                if i_ > n break
                end;
                A(n)=false;
               
            end
        end
    end
    
    A

end

