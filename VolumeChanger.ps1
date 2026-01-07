$obj = New-Object -ComObject wscript.shell
for ($i=0; $i -lt 100; $i+=2) { $obj.SendKeys([char]175) }
