function [] = problem1()
%PROBLEM1 Summary of this function goes here
% If we list all the natural numbers below 10 that are 
% multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these 
% multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.

  sum = 0;
  upperlimit = 1000;
  
  i=3;
  while (i < upperlimit) 
      sum=sum+i;
      i=i+3;
  end
  i=5;
  while (i < upperlimit) 
      if ( mod(i,3) ~= 0)
        sum=sum+i;
      end    
      i=i+5;
  end
  
  fprintf(1, 'the sum of multiples of 3 and 5 under 1000 is %d \n', sum);

end

