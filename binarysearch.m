%BINARY SEARCH 

% array should be sorted
% compare middle element with targer
% Divide and conquer strategy


a= [3,6,8,10,12,17,25,29,31,36,42,47,53,55,62];

low=1;
high = length(a);

mid = (low + high) / 2

target = 42;

if(a(mid) == target)
     fprintf('The element is found at the index %d ',mid);
elseif (a(mid) > target)
    high= mid -1;
elseif (a(mid) < target)
 
