function sortedArray = mergeSort(array)
    % Base case: array of length 0 or 1 is already sorted
    if length(array) <= 1
        sortedArray = array;
        return;
    end

    % Find the middle index
    mid = floor(length(array)/2);

    % Recursively sort the left and right halves
    left = mergeSort(array(1:mid));
    right = mergeSort(array(mid+1:end));

    % Merge the sorted halves
    sortedArray = merge(left, right);
end

function result = merge(left, right)
    result = [];

    i = 1; j = 1;

    % Compare elements from left and right and append smaller to result
    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            result(end+1) = left(i); %#ok<AGROW>
            i = i + 1;
        else
            result(end+1) = right(j); %#ok<AGROW>
            j = j + 1;
        end
    end

    % Append any remaining elements
    while i <= length(left)
        result(end+1) = left(i); %#ok<AGROW>
        i = i + 1;
    end

    while j <= length(right)
        result(end+1) = right(j); %#ok<AGROW>
        j = j + 1;
    end
end
