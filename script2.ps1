$path = "C:\rep\"
$name = "test"
$File=Get-ChildItem "$path$name.zip"
$date=$File.LastWriteTime


$log = "$path$name.log"

if (! (Test-Path $log))
{
    $file = new-item $log -type file
    ADD-content -path $log -value "Log for $path$name.zip : LastWrite"
    Write-Host "Create $log"
}

ADD-content -path $log -value $date
Write-Host "Write in $log"