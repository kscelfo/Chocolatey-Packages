$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'roboform'
  fileType               = 'msi'
  url                    = 'https://www.roboform.com/dist/RoboForm-v9-Enterprise.msi'  
  checksum               = 'ef35cf22532f8a0bfc000e5afc2c4d7a693d49fdc77cfed43ff64345d89a68a0'
  checksumType           = 'sha256'  
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'RoboForm'
}
Install-ChocolateyPackage @packageArgs
