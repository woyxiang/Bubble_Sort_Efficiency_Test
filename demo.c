#include <stdio.h>
#include <time.h>

void bubble_sort(int unsorted[], int length) {
    for (int i = 0; i < length; i++) {
        for (int j = i; j < length; j++) {
            if (unsorted[i] > unsorted[j]) {
                int temp = unsorted[i];
                unsorted[i] = unsorted[j];
                unsorted[j] = temp;
            }
        }
    }
}

int main() {
    clock_t startTime, stopTime;
    startTime = clock();

    int array[10000];
    int insideInt = 1000000;
    for (int i = 0; i < 10000; i++) {
        array[i] = insideInt - i;
    }

    bubble_sort(array, 10000);

    stopTime = clock();
    printf("%f ms\n", ((double)(stopTime - startTime) / CLOCKS_PER_SEC)*1000);
    return 0;
}