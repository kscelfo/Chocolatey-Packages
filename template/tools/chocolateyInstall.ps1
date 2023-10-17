$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'template'
  fileType               = 'msi'
  url                    = ''  
  checksum               = ''
  checksumType           = 'sha256'
  url64bit               = ''  
  checksum64             = ''
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'template'
}
Install-ChocolateyPackage @packageArgs