Attribute VB_Name = "Module1"
Option Explicit


Sub Main()
Dim arry(9999)
Dim startTime, stopTime, insideInt, i, j, temp
startTime = Timer

'����һ�����ֵ���,����10000������
insideInt = 1000000
For i = 0 To 9999
    arry(i) = insideInt - i
Next

'�Ѵ�������鰴��������
For i = 0 To UBound(arry) - 1
    For j = 0 To UBound(arry) - i - 1
        If arry(j) > arry(j + 1) Then
            temp = arry(j)
            arry(j) = arry(j + 1)
            arry(j + 1) = temp
        End If
    Next
Next

stopTime = Timer
MsgBox (stopTime - startTime) * 1000 & " ms"
End Sub


