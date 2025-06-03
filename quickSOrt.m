arr = [8, 3, 5, 1, 7, 2];
sortedA = quickSort(arr);
disp('Sorted Array :');
disp(sortedA);


function sortedArray = quickSort(arr)
    if length(arr) <= 1
        sortedArray = arr;
        return;
    end

    pivot = arr(1);
    less = arr(arr < pivot);
    equal = arr(arr == pivot);
    greater = arr(arr > pivot);

    sortedArray = [quickSort(less), equal, quickSort(greater)];
end
