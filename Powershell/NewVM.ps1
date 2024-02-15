New-AzVm `
     -ResourceGroupName 'MTT-Demo-Posh' `
     -Name 'PoshVM' `
     -Location 'West US 3' `
     -VirtualNetworkName 'myVnet' `
     -SubnetName 'mySubnet' `
     -SecurityGroupName 'myNetworkSecurityGroup' `
     -PublicIpAddressName 'myPublicIpAddress' `
     -OpenPorts 80,3389

Remove-AzVm -ResourceGroupName 'MTT-Demo-Posh' -Name 'PoshVM' -Force

Remove-AzResourceGroup -Name 'MTT-Demo-Posh' -Force

Install-WindowsFeature -Name Web-Server -IncludeManagementTools