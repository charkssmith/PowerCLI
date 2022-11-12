#set variables
$vcenter = "172.16.10.9"
$cluster = "TheClover"

connect-viserver $vcenter #comment this line out if you are already connected to your vCenter
Get-VM | FT
