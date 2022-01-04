$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'firefox-developer'
  fileType               = 'msi'
  url                    = 'https://download.mozilla.org/?product=firefox-devedition-msi-latest-ssl&amp;os=win&amp;lang=en-US'  
  checksum               = '63f2795b29268b45f986097b43a37e4da1e33391822b79e3e1034a3f1b277ddf'
  checksumType           = 'sha256'
  url64bit               = 'https://download.mozilla.org/?product=firefox-devedition-msi-latest-ssl&amp;os=win64&amp;lang=en-US'  
  checksum64             = 'b9635254ab05b06c47cd6ed59ae90691ebabcc9da50cecf10bc40f86ba172c1f'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'firefox-developer'
}
Install-ChocolateyPackage @packageArgs
