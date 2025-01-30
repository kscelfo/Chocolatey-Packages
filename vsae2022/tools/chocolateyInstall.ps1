$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'vsae2022'
  fileType       = 'msi'
  url64bit       = 'https://download.microsoft.com/download/4/6/e/46e6f247-d7fb-4923-84c7-38dffe6bc9be/VisualStudio2022AuthoringConsole_x64.msi'  
  checksum64     = 'ae24b23dcea1651fe6532711dd02c2f7de1958c29a60428139b5124127c3d0c8'
  checksumType64 = 'sha256'
  silentArgs     = '/qn'
  validExitCodes = @(0)
  softwareName   = 'System Center Visual Studio 2022 Authoring Extensions'
}

# Check if the software is already installed
$software = Get-WmiObject -Query "SELECT * FROM Win32_Product WHERE (Name = '$($packageArgs.softwareName)')"

if ($software) {
  # Uninstall the software
  Uninstall-ChocolateyPackage @packageArgs
}

# Install the software
Install-ChocolateyPackage @packageArgs
