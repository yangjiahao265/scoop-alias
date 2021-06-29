$bucketRoot = "$env:SCOOP\buckets"
Get-ChildItem $bucketRoot | ForEach-Object { 
    $bucketName = $_.name; 
    $bucketOrigin = git -C $bucketRoot\$bucketName\ remote get-url origin; 
    Write-Host -NoNewLine -foreground green "$bucketName`: "; 
    Write-Host "$bucketOrigin"
}