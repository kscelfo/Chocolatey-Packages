$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'progresscontrolpanel'
  fileType               = 'msi'
  url                    = 'https://www.roboform.com/dist/RoboForm-v9-Enterprise.msi'  
  checksum               = 'dea45ffb2623d8afefbc1e209aa75d54d47322006e459f2fdcfa5e6e2f71dec8'
  checksumType           = 'sha256'  
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'RoboForm'
}
Install-ChocolateyPackage @packageArgs
