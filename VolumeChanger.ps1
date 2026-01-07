Add-Type -AssemblyName System.Windows.Forms

function Set-Level {
    param (
        [int]$Value,
        [int]$Pause = 40
    )

    1..50 | ForEach-Object {
        [System.Windows.Forms.SendKeys]::SendWait([char]174)
        Start-Sleep -Milliseconds 5
    }

    $count = [Math]::Ceiling($Value / 2)
    1..$count | ForEach-Object {
        [System.Windows.Forms.SendKeys]::SendWait([char]175)
        Start-Sleep -Milliseconds $Pause
    }
}

$range = 0,10,20,30,40,50,60,70,80,90,100

while ($true) {
    if (Get-Random -Minimum 0 -Maximum 2) {
        $sequence = $range
    } else {
        $sequence = $range.Clone()
        [array]::Reverse($sequence)
    }

    foreach ($step in $sequence) {
        Set-Level -Value $step -Pause (Get-Random 25 60)
        Start-Sleep -Milliseconds (Get-Random 200 600)
    }

    Start-Sleep -Seconds (Get-Random 1 3)
}
