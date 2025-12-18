$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'roboform'
  fileType               = 'msi'
  url                    = 'https://www.roboform.com/dist/RoboForm-v9-Enterprise.msi'  
  checksum               = 'b9b36f1c4e1d7f3446d79a756cd46fcdd5f01854ef1d61562cb7ef1b57efd016'
  checksumType           = 'sha256'  
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'RoboForm'
}
Install-ChocolateyPackage @packageArgs
