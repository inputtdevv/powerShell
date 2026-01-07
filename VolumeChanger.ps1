Add-Type -AssemblyName System.Windows.Forms
1..50 | ForEach-Object { 
    [System.Windows.Forms.SendKeys]::SendWait([char]175)
    Start-Sleep -Milliseconds (Get-Random -Minimum 5 -Maximum 15)
}
