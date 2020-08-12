<#	
    .Synopsis
      This powershell script Disables / Removes .NET Framework 3.5 to Windows 10
    .NOTES
	  Created:   	July, 2020
	  Created by:	Phil Helmling, @philhelmling
	  Organization: 	VMware, Inc.
	  Filename:     	DisabledotNETFX35.ps1
	.DESCRIPTION
	  This powershell script Disables / Removes .NET Framework 3.5 to Windows 10
    .EXAMPLE
      powershell.exe -executionpolicy bypass -file .\EnabledotNETFX35.ps1
#>

Disable-WindowsOptionalFeature -Online -FeatureName "NetFX3" -NoRestart

$status=Get-WindowsOptionFeature -Online -Featurename "NetFX3"

if ($status -ne "DisabledWithPayloadRemoved") {
    return 1
} else {
    return 0
}