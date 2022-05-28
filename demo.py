import time

##把传入的数组按正序排序
def bubble_sort(unsorted):
	for i in range(len(unsorted)-1):
		for j in range(len(unsorted)-i-1):
			if unsorted[j] > unsorted[j+1]:
				unsorted[j],unsorted[j+1] = unsorted[j+1],unsorted[j]
	return int(time.time()*1000)

startTime = int(time.time()*1000)
##生成一个数字倒序,长度10000的数组
array = []
insideInt = 1000000
for i in range(10000):
	array.append(insideInt-i)
stopTime = bubble_sort(array)
print(stopTime-startTime,'ms')