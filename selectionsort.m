arr = [12,6,7,8,10,2,9];
n = length(arr);

for i = 1 : n
    min = i;

    for j = i+1 : n
       if arr(min) > arr(j)
           min = j;
       end
    end


   if i ~= min
       temp = arr(i);
       arr(i)=arr(min);
       arr(min)=temp;
   end

end

disp("Selection sort:");
disp(arr);
