$results = @()
while ($true) {
    $results += speedtest-cli --json --server 2955 | ConvertFrom-Json
    $results | Format-Table -AutoSize

    Start-Sleep -Seconds 120
}
