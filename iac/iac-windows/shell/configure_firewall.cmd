@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" Enable-PSRemoting -SkipNetworkProfileCheck
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" netsh advfirewall firewall add rule name="TCP-PORT" dir=in localport=9999 protocol=TCP action=allow
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False