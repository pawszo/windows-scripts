$touchpad = Get-PnpDevice | Where-Object {$_.FriendlyName -like '*TPFHID*'} 
$touchpadId = $touchpad.InstanceId

if($touchpad.Status.equals("OK")) {
	Disable-PnpDevice -InstanceId $touchpadId -Confirm:$false
}
else {
	Enable-PnpDevice -InstanceId $touchpadId -Confirm:$false
}