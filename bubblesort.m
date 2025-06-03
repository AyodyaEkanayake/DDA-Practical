arr = [12,6,7,8,10,2,9];
n = length(arr);

for i= 1 :n-1
    for j = 1: n-i
        if arr(j) > arr(j+1)
            temp = arr(j);
            arr(j) = arr(j+1);
            arr (j+1)=temp;
        end
    end
end

disp("Bubble sort: ");
disp(arr);
