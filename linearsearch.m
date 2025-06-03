arr = [3, 5, 7, 9, 11, 13];

target = 9;

tic;
for i = 1:length(arr)
    if arr(i) == target
        fprintf('Element %d found at index %d.\n', target, i);
        found = true;
        break;
    end
end


if ~found
    fprintf('Element %d not found in the array.\n', target);
end

elapsedTime = toc; 

fprintf('Elapsed time: %f seconds \n',elapsedTime);