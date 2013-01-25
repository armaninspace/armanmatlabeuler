function [ routes ] = problem15( )
%PROBLEM15 Summary of this function goes here
%   Detailed explanation goes here


divisors=2:20;
routes=uint64(1);
for i=21:40
    routes=uint64(routes*i);
    for i=1:length(divisors)
        d=divisors(i);
        if d~=-1 && mod(routes,d)==0
            routes=uint64(routes/d);
            divisors(i)=-1;
            fprintf(1,'divided by %d \n', i);
        end
    end
end

%1 2
%2 6
%3 20
%4 70
%5 252
%6 924
%7 3432
%8 12870
%9 48620
%10 184756
%11 705432
%12 2704156
%13 10400600
%14 40116600

end

