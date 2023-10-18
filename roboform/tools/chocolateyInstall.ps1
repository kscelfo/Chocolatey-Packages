$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'roboform'
  fileType               = 'msi'
  url                    = 'https://www.roboform.com/dist/RoboForm-v9-Enterprise.msi'  
  checksum               = 'bde1bd10430d868a7a83ed2b7c365e7d21d2a8b3638b42c543438e7943b4c73e'
  checksumType           = 'sha256'  
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'RoboForm'
}
Install-ChocolateyPackage @packageArgs
