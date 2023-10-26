$file="Item_ID.txt" 	

$FolderPath = ""  #json file save path folder
$FilePathId = Join-Path -Path $FolderPath -ChildPath $file
$itemId = Get-Content -Path $FilePathId
$Headers = @{
    'User-Agent' = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'
}

$z = 1
$check = 1

foreach ($id in $itemId) {
    if($z -eq 74)
    {break;}
    Start-Sleep -s 5;

    $url = "https://steamcommunity.com/market/priceoverview/?appid=730&market_hash_name=$id&currency=6"
    $response = Invoke-RestMethod -Uri $url 
    Write-Host $response

    if ($response.success -eq $true) {
        
        $fragment = $response | ConvertTo-Json -Depth 5
        
        $FileName = "{0:D2}" -f $z
        $FileName = "fragments$filenumber.json"
        Write-Host $nazwaPliku;
        $JsonFolderPath = Join-Path -Path $folderPath -ChildPath $FileName
        $z++

        $fragment | Set-Content -Path $sciezkaPlikuJSON -Force
    } else {
        Write-Host "Couldn't download content from the site ($id)."
    }
    
    
    
}
