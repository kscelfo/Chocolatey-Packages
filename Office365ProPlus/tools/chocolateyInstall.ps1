$configFile = (Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'configuration.xml')
$packageName = 'Office365ProPlus'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/6/2/3/6230F7A2-D8A9-478B-AC5C-57091B632FCF/officedeploymenttool.exe'

$silentArgs = "/extract:$env:temp\office /log:$env:temp\officeInstall.log /quiet /norestart"
$validExitCodes = @(0)

$architecture = (Get-WmiObject win32_processor | Where-Object{$_.deviceID -eq "CPU0"}).AddressWidth
If ($architecture -eq 64) {
   $configFile = (Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'configuration64.xml')
}

Write-Host "Extracting to $silentArgs"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
Install-ChocolateyInstallPackage "$packageName" "$installerType" "/download $configFile" "$env:temp\office\setup.exe"
Install-ChocolateyInstallPackage "$packageName" "$installerType" "/configure $configFile" "$env:temp\office\setup.exe"