Dim arry(9999) As Integer
Dim startTime As Double, stopTime As Double
Dim insideInt As Integer, i As Integer, j As Integer, temp As Integer
startTime = Timer

'生成一个数字倒序,长度10000的数组
insideInt = 1000000
For i = 0 To 9999
	arry(i) = insideInt - i
Next i

'把传入的数组按正序排序
For i = 0 To UBound(arry) - 1
	For j = 0 To UBound(arry) - i - 1
		If arry(j) > arry(j + 1) Then
			temp = arry(j)
			arry(j) = arry(j + 1)
			arry(j + 1) = temp
		End If
	Next j
Next i

stopTime = Timer
Print (stopTime - startTime) * 1000 & " ms"

