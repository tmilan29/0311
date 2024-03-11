$freeSpace = Get-PSDrive | Select-Object -ExpandProperty Free

$thresholdGB = 100

if ($freeSpace -lt $thresholdGB) {
    Write-Output "There is less than $thresholdGB GB of free space."
}
else {
    Write-Output ($freeSpace/1GB)
}