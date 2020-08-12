<#	
    .Synopsis
      This powershell script detects if .NET Framework 3.5 on Windows 10 is installed
    .NOTES
	  Created:   	July, 2020
	  Created by:	Phil Helmling, @philhelmling
	  Organization: 	VMware, Inc.
	  Filename:     	DetectdotNETFX35.ps1
	.DESCRIPTION
	  Detects if .NET Framework 3.5 on Windows 10 is installed
    .EXAMPLE
      powershell.exe -executionpolicy bypass -file .\DetectdotNETFX35.ps1
#>

$status=Get-WindowsOptionFeature -Online -Featurename "NetFX3"

if ($status -ne "Enabled") {
    return 1
} else {
    return 0
}