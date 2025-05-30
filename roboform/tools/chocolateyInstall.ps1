$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'roboform'
  fileType               = 'msi'
  url                    = 'https://www.roboform.com/dist/RoboForm-v9-Enterprise.msi'  
  checksum               = '05a8b23b536f3463c4b87936e52a4653abc848251b479811f7b83b7c73335d19'
  checksumType           = 'sha256'  
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'RoboForm'
}
Install-ChocolateyPackage @packageArgs
