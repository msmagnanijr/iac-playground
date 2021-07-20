@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" Enable-PSRemoting -SkipNetworkProfileCheck
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" netsh advfirewall firewall add rule name="SSH-TCP" dir=in localport=22 protocol=TCP action=allow
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False