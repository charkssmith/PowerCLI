Connect-ViServer xxxxx -Credential (Get-Credential)

foreach($esx in Get-VMHost){
    $esxcli = Get-EsxCli -VMHost $esx
    # Create A new SATP rule for Dell SC Compellent
    $result = $esxcli.storage.nmp.satp.rule.add($null,"tpgs_on","Compellent Custom iSCSI/FC/FCoE ALUA Rule",$null,$null,$null,"VV",$null,"VMW_PSP_RR","iops=3","VMW_SATP_ALUA",$null,$null,"COMPELNT")
    Write-Host "Host:", $esx.Name, "Result", $result
}
