package main

import (
	"fmt"
	"time"
)

func main() {
	var startTime = time.Now().UnixNano() / 1000000
	var array [10000] int
	insideInt := 1000000
	for i := 0; i < len(array); i++ {
		array[i] = insideInt - i
	}
	var stopTime = bubble_sort(array)
	fmt.Print(stopTime-startTime,"ms")
}
func bubble_sort(unsorted [10000] int) int64 {
	for i := 0; i < len(unsorted); i++ {
		for j := i; j < len(unsorted); j++ {
			if unsorted[i] > unsorted[j] {
				var temp = unsorted[i]
				unsorted[i] = unsorted[j]
				unsorted[j] = temp
			}
		}
	}
	return time.Now().UnixNano() / 1000000
}