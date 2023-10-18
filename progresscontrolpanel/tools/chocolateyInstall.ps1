$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'progresscontrolpanel'
  fileType               = 'exe'
  url                    = 'https://www.telerik.com/try/control-panel'  
  checksum               = ''
  checksumType           = 'sha256'  
  silentArgs             = ''
  validExitCodes         = @(0)
  softwareName           = 'Progress Control Panel'
}
Install-ChocolateyPackage @packageArgs
