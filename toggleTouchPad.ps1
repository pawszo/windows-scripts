$touchpad = Get-PnpDevice | Where-Object {$_.FriendlyName -like '*TPFHID*'} 

if($touchpad.Status.equals("Error")) {
Get-PnpDevice | Where-Object {$_.FriendlyName -like '*TPFHID*'} | Enable-PnpDevice -Confirm:$false
}
else {
Get-PnpDevice | Where-Object {$_.FriendlyName -like '*TPFHID*'} | Disable-PnpDevice -Confirm:$false
}