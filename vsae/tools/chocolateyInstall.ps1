$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'vsae'
  fileType               = 'msi'
  url                    = 'https://download.microsoft.com/download/4/4/6/446B60D0-4409-4F94-9433-D83B3746A792/VisualStudioAuthoringConsole_x86.msi'  
  checksum               = 'f1647bc23d83e9d1ef6b0333377a0adad2ba435246cf34048c8f146f47adc0d5'
  checksumType           = 'sha256'
  url64bit               = 'https://download.microsoft.com/download/4/4/6/446B60D0-4409-4F94-9433-D83B3746A792/VisualStudioAuthoringConsole_x64.msi'  
  checksum64             = '296bb250653402aaa5e82e229975d546b564ce1d7618391869089997eaf1d7dc'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'vsae'
}
Install-ChocolateyPackage @packageArgs
