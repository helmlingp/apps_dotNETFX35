<#	
    .Synopsis
      This powershell script adds .NET Framework 3.5 to Windows 10
    .NOTES
	  Created:   	July, 2020
	  Created by:	Phil Helmling, @philhelmling
	  Organization: 	VMware, Inc.
	  Filename:     	EnabledotNETFX35.ps1
	.DESCRIPTION
	  This powershell script adds .NET Framework 3.5 to Windows 10
    .EXAMPLE
      powershell.exe -executionpolicy bypass -file .\EnabledotNETFX35.ps1
#>

Enable-WindowsOptionalFeature -Online -FeatureName "NetFX3" -All -NoRestart

$status=Get-WindowsOptionFeature -Online -Featurename "NetFX3"

if ($status -ne "Enabled") {
    return 1
} else {
    return 0
}