var startTime = new Date();
var array = new Array(10000);
var insideInt = 1000000;
for (var i = 0; i < array.length; i++) {
    array[i] = insideInt - i;
}
var stopTime = bubble_sort(array);
WScript.Echo((stopTime.getTime() - startTime.getTime())+'ms');

function bubble_sort(unsorted) {
    for (var i = 0; i < unsorted.length; i++) {
        for (var j = i; j < unsorted.length; j++) {
            if (unsorted[i] > unsorted[j]) {
                var temp = unsorted[i];
                unsorted[i] = unsorted[j];
                unsorted[j] = temp;
            }
        }
    }
    return new Date();
}