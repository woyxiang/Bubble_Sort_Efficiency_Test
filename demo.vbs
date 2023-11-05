Dim array(9999)
Dim startTime, stopTime
startTime = Timer

'生成一个数字倒序,长度10000的数组
insideInt = 1000000
For i = 0 To 9999
	array(i) = insideInt - i
Next

'把传入的数组按正序排序
For i = 0 To UBound(array) - 1
	For j = 0 To UBound(array) - i - 1
		If array(j) > array(j + 1) Then
			temp = array(j)
			array(j) = array(j + 1)
			array(j + 1) = temp
		End If
	Next
Next

stopTime = Timer
WScript.Echo (stopTime - startTime) * 1000 & " ms"
