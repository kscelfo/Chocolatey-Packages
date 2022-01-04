$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'roboform'
  fileType               = 'msi'
  url                    = 'https://www.roboform.com/dist/RoboForm-v9-Enterprise.msi'  
  checksum               = '1753b25cd8452466e5e0c95dbc13da98a8f125e7a9d30f5b834a85ade1644cb2'
  checksumType           = 'sha256'  
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'RoboForm'
}
Install-ChocolateyPackage @packageArgs
