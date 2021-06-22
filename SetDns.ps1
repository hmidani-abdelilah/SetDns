# Author: @haithamaouati

$host.UI.RawUI.WindowTitle = "SetDns"
clear

Write-Host "
  ____       _   ____            
 / ___|  ___| |_|  _ \ _ __  ___ 
 \___ \ / _ \ __| | | | '_ \/ __|
  ___) |  __/ |_| |_| | | | \__ \
 |____/ \___|\__|____/|_| |_|___/
"
Write-Host " Author: Haitham Aouati`n" -ForegroundColor Yellow

$ip1 = Read-Host -Prompt 'Preferred DNS server'
$ip2 = Read-Host -Prompt 'Alternate DNS server'
Set-DnsClientServerAddress -InterfaceIndex 8 -ServerAddresses $ip1, $ip2
Get-DnsClientServerAddress -InterfaceIndex 8 -AddressFamily "IPv4" | Format-List -Property ServerAddresses