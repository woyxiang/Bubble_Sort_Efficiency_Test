let startTime = new Date();
let array = new Array(10000);
let insideInt = 1000000;
for (let i = 0;
     i < array.length;
     i++
) {
    array[i] = insideInt - i;
}
let stopTime = bubble_sort(array);
console.log((stopTime.getTime() - startTime.getTime())+'ms');

function bubble_sort(unsorted) {
    for (let i = 0; i < unsorted.length; i++) {
        for (let j = i; j < unsorted.length; j++) {
            if (unsorted[i] > unsorted[j]) {
                let temp = unsorted[i];
                unsorted[i] = unsorted[j];
                unsorted[j] = temp;
            }
        }
    }
    return new Date();
}