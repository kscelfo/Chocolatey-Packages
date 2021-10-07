$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'vsae'
  fileType               = 'msi'
  url                    = 'https://download.microsoft.com/download/4/4/6/446B60D0-4409-4F94-9433-D83B3746A792/VisualStudioAuthoringConsole_x86.msi'  
  checksum               = ''
  checksumType           = 'sha256'
  url64bit               = 'https://download.microsoft.com/download/4/4/6/446B60D0-4409-4F94-9433-D83B3746A792/VisualStudioAuthoringConsole_x64.msi'  
  checksum64             = ''
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'vsae'
}
Install-ChocolateyPackage @packageArgs
